import argparse, config, openai, os, random, re
from intercode.envs import (
    BashEnv, SqlEnv, ACTION_EXEC
)
import simplejson as json
from tqdm import tqdm
from typing import Dict, List
from experiments.utils import TemplatePlanSolve, ACTION_PARSER_MAP

parser = argparse.ArgumentParser(description='Plan & Solve evaluation for Intercode environment')
parser.add_argument('--data_path', type=str, help='path to dataset to evaluate on')
parser.add_argument('--env', choices=['sql', 'bash'], help='Intercode environment to run eval on')
parser.add_argument('--image_name', type=str, help='name of docker image to build environment with')
parser.add_argument('--log_dir', type=str, help='folder to save experiment run log file to')
parser.add_argument('--proportion', type=float, help="proportion of the dataset to use for evaluation")
parser.add_argument('--refine', action='store_true', help="whether to run refine step")
parser.add_argument('--refine_turns', type=int, help="number of turns to run refine step for")
parser.add_argument('--seed', type=int, help="seed for randomness")
parser.add_argument('--verbose', action='store_true', help="print out logs")
args = parser.parse_args()

SETTING_MAP = {
    "sql": "MySQL Database",
    "bash": "Bourne Shell"
}

def preprocess_sql(record: Dict) -> List:
    db = record["db"]
    return [f"use {db}"]

# Set OpenAPI key from environment or config file
api_key = os.environ.get("OPENAI_API_KEY")
if (api_key is None or api_key == "") and os.path.isfile(os.path.join(os.getcwd(), "keys.cfg")):
    cfg = config.Config('keys.cfg')
    api_key = cfg["OPENAI_API_KEY"]
openai.api_key = api_key

def llm(messages, stop=["\n"]):
    response = openai.ChatCompletion.create(
        model="gpt-3.5-turbo",
        messages=messages,
        temperature=0,
        top_p=1,
        max_tokens=512,
        n=1,
    )
    return response.choices[0].message

class ExperimentWrapper():
    def __init__(self, args):
        self.args = args

        # Set environment (No logging for env)
        self.env = None
        if args.env == 'sql':
            self.env = SqlEnv(image_name=args.image_name,
                data_path=args.data_path, preprocess=preprocess_sql)
        elif args.env == 'bash':
            self.env = BashEnv(image_name=args.image_name,
                data_path=args.data_path)
        else:
            raise ValueError(f'Environment {args.env} not recognized')
        
        # Define log file name and path
        if not os.path.exists(args.log_dir):
            os.makedirs(args.log_dir, exist_ok=True)
        log_file_name = f"{self.env.name}_plan_solve.json"
        if args.refine and args.refine_turns:
            log_file_name = f"{self.env.name}_plan_solve_refine_{args.refine_turns}_turns.json"
        self.log_path = os.path.join(args.log_dir, log_file_name)
        self.log_data = {}

        # Define dialogue, template, parser
        self.dialogue = []
        self.template = TemplatePlanSolve(self.args.env.upper(), SETTING_MAP[self.args.env])
        self.parser = ACTION_PARSER_MAP[self.args.env]
    
    def run_expr(self):
        try:
            indices = range(len(self.env.data_loader))
            if self.args.seed and self.args.proportion:
                indices = random.Random(self.args.seed).choices(list(indices),
                    k=int(len(indices) * self.args.proportion))[6:]
            for idx in tqdm(indices, disable=self.args.verbose):
                # Reset variables per task
                self.env.reset(idx)
                observation, self.dialogue = None, []
                turn_history = {"actions": [], "observations": [], "rewards": [], "steps": [], "valid_action": []}
                record = self.env.data_loader.get(idx)

                if self.args.verbose:
                    print(f'------\nQuery {idx}: {self.env.query}')
                
                # Get plan
                self.dialogue.append({"role": "system", "content": self.template.get_init_msg()})
                self.dialogue.append({"role": "user", "content": self.template.get_query_msg(self.env.query)})
                action = llm(self.dialogue)
                plan = re.findall("\d+\.\s(.*?)(?=\s\d+\.|\Z)", action.content, re.DOTALL)
                
                if self.args.verbose:
                    print(f"Plan: {plan}")

                self.dialogue.append({"role": "system", "content": self.template.get_execute_plan_msg()})

                observation, info = None, None
                for idx_plan in range(len(plan)):
                    step = plan[idx_plan]
                    if isinstance(observation, str) and len(observation) > 1000:
                        observation = observation[:1000]
                    elif isinstance(observation, list) and len(observation) > 25:
                        observation = observation[:25]
                    observation = f"Step: {step}" if observation is None else f"Observation: {observation}\nStep: {step}"
                    self.dialogue.append({"role": "user", "content": str(observation)})

                    action = llm(self.dialogue)
                    action_parsed, is_code = self.parser(action.content)

                    if not is_code:
                        observation = self.template.get_retry_msg()
                        valid_action, reward, done = False, 0, False
                    else:
                        observation, _, _, info = self.env.step(action_parsed)
                        valid_action = info[ACTION_EXEC]
                        _, reward, done, info = self.env.step("submit")
                    self.dialogue.append(action)

                    if self.args.verbose:
                        print(f"- Step {idx_plan}: {step}")
                        print(f"-- Action: {action_parsed}")
                        if isinstance(observation, str) and observation.startswith(f'No {self.args.env.upper()} code'):
                            print(f"-- Observation: (meta) No code output, policy's template's retry message was invoked")
                        else:
                            print(f"-- Observation: {observation}")
                    
                    turn_history["steps"].append(step)
                    turn_history["actions"].append(action_parsed)
                    turn_history["rewards"].append(reward)
                    turn_history["observations"].append(str(observation)) # To avoid serialization issues
                    turn_history["valid_action"].append(valid_action)

                # Enter self-refine mode if enabled
                if reward != 1 and self.args.refine and self.args.refine_turns:
                    if self.args.verbose:
                        print("Plan finished execution, entering refine mode")
                    self.dialogue.append({"role": "system", "content": self.template.get_after_plan_msg()})
                    for turn in range(self.args.refine_turns):
                        if isinstance(observation, str) and len(observation) > 250:
                            observation = observation[:250]
                        elif isinstance(observation, list) and len(observation) > 25:
                            observation = observation[:25]
                        self.dialogue.append({"role": "user", "content": str(observation)})
                        action = llm(self.dialogue)
                        action_parsed, is_code = self.parser(action.content)

                        if not is_code:
                            observation = self.template.get_retry_msg()
                        else:
                            observation, _, _, info = self.env.step(action_parsed)
                            valid_action = info[ACTION_EXEC]
                            _, reward, done, info = self.env.step("submit")
                        self.dialogue.append(action)

                        if self.args.verbose:
                            print(f"- Step (Refine): {turn + 1}")
                            print(f"-- Action: {action_parsed}")
                            if isinstance(observation, str) and observation.startswith(f'No {self.args.env.upper()} code'):
                                print(f"-- Observation: (meta) No code output, policy's template's retry message was invoked")
                            else:
                                print(f"-- Observation: {observation}")
                        
                        turn_history["actions"].append(action_parsed)
                        turn_history["rewards"].append(reward)
                        turn_history["observations"].append(str(observation)) # To avoid serialization issues
                        turn_history["valid_action"].append(valid_action)
                        
                        if reward == 1:
                            break
                
                # Logging
                max_reward, max_reward_idx = 0, -1
                if len(turn_history["rewards"]) > 0:
                    max_reward = max(turn_history["rewards"])
                    max_reward_idx = turn_history["rewards"].index(max_reward)

                log_episode = {
                    "environment": self.env.name,
                    "dataset": self.args.data_path,
                    "task_id": idx,
                    "query": self.env.query,
                    "turn_history": turn_history,
                    "info": info,
                    "summary": {
                        "max_reward": max_reward,
                        "max_reward_idx": max_reward_idx,
                    }
                }
                if "hardness" in record:
                    log_episode["hardness"] = record["hardness"]
                self.log_data[idx] = log_episode

                if self.args.verbose:
                    print(f"Query {idx} Finished\n-Reward: {max_reward}")

        except KeyboardInterrupt:
            print("Keyboard interrupt detected")
        finally:
            with open(self.log_path, "w") as fp:
                json.dump({
                    "meta": vars(self.args),
                    "logs": self.log_data
                }, fp, indent=2)
            self.env.close()


if __name__ == '__main__':
    expr_wrapper = ExperimentWrapper(args)
    expr_wrapper.run_expr()
