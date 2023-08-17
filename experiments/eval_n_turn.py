import argparse, json, os, re
from intercode.envs import (
    BashEnv, CTFEnv, PythonEnv, SqlEnv, ACTION_EXEC, AGENT_OBS
)
from tqdm import tqdm
from typing import Dict, List
from experiments.policies import (
    CompletionGPTPolicy, ChatGPTPolicy, PalmChatPolicy, PalmCompletionPolicy
)
from experiments.utils import HANDICAP_MAP, PROMPT_MAP
from rich import print

parser = argparse.ArgumentParser(description='N-turn evaluation for Intercode environment')
parser.add_argument('--data_path', type=str, help='path to dataset to evaluate on')
parser.add_argument('--dialogue_limit', type=int, help='maximum number of turns in the policy\'s dialogue to keep')
parser.add_argument('--env', choices=['sql', 'bash', 'python', 'ctf'], help='Intercode environment to run eval on')
parser.add_argument('--handicap', action='store_true', help='enable handicap')
parser.add_argument('--image_name', type=str, help='name of docker image to build environment with')
parser.add_argument('--log_dir', type=str, help='folder to save experiment run log file to')
parser.add_argument('--max_turns', type=int, help='max number of interaction turns')
parser.add_argument('--policy', choices=['chat', 'complete'], help="policy to use for evaluation")
parser.add_argument('--template', type=str, help="template to use for prompting strategy")
parser.add_argument('--verbose', action='store_true', help="print out logs")
parser.add_argument('--model', type=str, help="model to use for policy")
args = parser.parse_args()

SETTING_MAP = {
    "sql": "MySQL Database",
    "bash": "Bourne Shell",
    "python": "Python 3 Interpreter",
    "ctf": "Capture the Flag"
}

def preprocess_ctf(record: Dict) -> List:
    cmds = [f"cd /ctf/{record['task_id']}"]
    if "setup" in record:
        cmds.append(record["setup"])
    return cmds

def preprocess_sql(record: Dict) -> List:
    db = record["db"]
    return [f"use {db}"]

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
        elif args.env == 'python':
            self.env = PythonEnv(image_name=args.image_name,
                data_path=args.data_path, is_agent=True)
        elif args.env == 'ctf':
            self.env = CTFEnv(image_name=args.image_name,
                data_path=args.data_path, preprocess=preprocess_ctf)
        else:
            raise ValueError(f'Environment {args.env} not recognized')
        
        # Define log file name and path
        if not os.path.exists(args.log_dir):
            os.makedirs(args.log_dir, exist_ok=True)
        log_file_name = f"{self.env.name}_multiturn_{args.model}_{args.max_turns}_turns.json"
        self.log_path = os.path.join(args.log_dir, log_file_name)
        self.log_data = {}

        # Initialize Policy
        if args.template not in PROMPT_MAP:
            raise ValueError(f"Prompt {args.template} not recognized; Options: {PROMPT_MAP.keys()}")
        self.policy = None
        if args.policy == 'chat':
            self.policy = ChatGPTPolicy(language=args.env, setting=SETTING_MAP[args.env],
                template=args.template, dialogue_limit=args.dialogue_limit, model=args.model)
        elif args.policy == 'complete':
            self.policy = CompletionGPTPolicy(language=args.env, setting=SETTING_MAP[args.env],
                template=args.template, dialogue_limit=args.dialogue_limit, model=args.model)
        else:
            raise ValueError(f'Policy {args.policy} not recognized')
        
        # Initialize handicap
        self.handicap = None
        if args.handicap and args.env in HANDICAP_MAP:
            self.handicap = HANDICAP_MAP[args.env]
    
    def run_expr(self):
        try:
            for idx in tqdm(range(0,len(self.env.data_loader)), disable=self.args.verbose):
                # Reset variables per task
                self.env.reset(idx)
                self.policy.reset()
                observation, reward, valid_action = None, None, None
                turn_history = {"actions": [], "observations": [], "rewards": [], "valid_action": []}
                record = self.env.data_loader.get(idx)

                # Add Handicap
                if self.handicap is not None:
                    self.policy.add_to_dialogue(self.handicap(record))

                if self.args.verbose:
                    print(f'------\nQuery {idx}: {self.env.query}')
                for turn in range(self.args.max_turns):
                    # Invoke Action -> Observation Iteration
                    try:
                        action, is_code = self.policy.forward(
                            self.env.query,
                            observation,
                            reward,
                            self.env.get_available_actions())
                    except (ValueError, TypeError) as e:
                        print(f"[ERROR] Index {idx}: {e}")
                        # Logging
                        turn_history["actions"].append("blocked")
                        turn_history["rewards"].append(0)
                        break

                    if not is_code:
                        reward = 0
                        observation = self.policy.template.get_retry_msg()
                        valid_action = False
                    else:
                        if isinstance(self.env, PythonEnv):
                            if action.startswith("def"):
                                func_name = re.match(r'def (\w+)\(', action).group(1)
                                observation, reward, _, info = self.env.step(action)
                                _, reward, _, info = self.env.step("submit " + func_name)

                                SHOW_FAILED_CASE = 0
                                if reward != 1:
                                    if SHOW_FAILED_CASE == 1:
                                        for k, v in info[AGENT_OBS].items():
                                            if len(v['error']) > 0:
                                                observation = f"Failed Test Case: {k}\nPlease try again."
                                                break
                                    elif SHOW_FAILED_CASE == 2:
                                        fails = 0
                                        for k, v in info[AGENT_OBS].items():
                                            if len(v['error']) > 0:
                                                fails += 1
                                        observation = f"Failed {fails}/{len(info[AGENT_OBS])} Test Cases. Please try again."
                                    else:
                                        if any([len(v['error']) > 0 for k, v in info[AGENT_OBS].items()]):
                                            observation = "Test case did not pass. Please try again."
                            else:
                                observation, reward, _, info = self.env.step(action)
                        else:
                            if action != "skip":
                                observation, reward, done, info = self.env.step(action)
                                valid_action = info[ACTION_EXEC]
                            else:
                                observation, reward, done, info = "skipped", 0, True, {}
                                valid_action = True
                            if not isinstance(self.env, CTFEnv):
                                _, reward, done, info = self.env.step("submit")
                            else:
                                if done and reward != 1 and action.lower() != "skip":
                                    observation = "Submitted flag is incorrect. Keep trying!"
                    
                    if self.args.verbose:
                        print(f"- Turn {turn}")
                        print(f"-- Action: {action}")
                        if isinstance(observation, str) and observation.startswith(f'No {self.policy.language} code'):
                            print(f"-- Observation: (meta) No code output, policy's template's retry message was invoked")
                        else:
                            print(f"-- Observation: {observation}")

                    # Logging
                    turn_history["actions"].append(action)
                    turn_history["observations"].append(str(observation)) # To avoid serialization issues
                    turn_history["rewards"].append(reward)
                    turn_history["valid_action"].append(valid_action)

                    # End episode upon perfect reward
                    if reward == 1 or action.lower() == "skip":
                        break
                
                max_reward = max(turn_history["rewards"])
                log_episode = {
                    "environment": self.env.name,
                    "dataset": self.args.data_path,
                    "task_id": idx,
                    "query": self.env.query,
                    "turn_history": turn_history,
                    "summary": {
                        "max_reward": max_reward,
                        "max_reward_idx": turn_history["rewards"].index(max_reward),
                        "turns_taken": turn + 1,
                        "turns_max": self.args.max_turns,
                    }
                }
                if "hardness" in record:
                    log_episode["hardness"] = record["hardness"]
                self.log_data[idx] = log_episode

                if self.args.verbose:
                    print(f"Query {idx} Finished\n-Reward: {max_reward}\n-Turns: {turn+1}")

        except KeyboardInterrupt:
            print("Keyboard interrupt detected")
        finally:
            with open(self.log_path, "w") as fp:
                json.dump(self.log_data, fp, indent=2)
            self.env.close()


if __name__ == '__main__':
    expr_wrapper = ExperimentWrapper(args)
    expr_wrapper.run_expr()
