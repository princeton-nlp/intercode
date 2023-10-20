import argparse, config, json, openai, os
from intercode.envs import (
    BashEnv, SqlEnv, ACTION_EXEC
)
from tqdm import tqdm
from typing import Dict, List
from experiments.utils import ACTION_PARSER_MAP_REACT, TemplateReAct

SETTING_MAP = {
    "sql": "MySQL Database",
    "bash": "Bourne Shell"
}

def preprocess_sql(record: Dict) -> List:
    db = record["db"]
    return [f"use {db}"]

parser = argparse.ArgumentParser(description='ReAct evaluation for Intercode environment')
parser.add_argument('--data_path', type=str, help='path to dataset to evaluate on')
parser.add_argument('--env', choices=['sql', 'bash'], help='Intercode environment to run eval on')
parser.add_argument('--image_name', type=str, help='name of docker image to build environment with')
parser.add_argument('--log_dir', type=str, help='folder to save experiment run log file to')
parser.add_argument('--max_turns', type=int, help='max number of interaction turns')
parser.add_argument('--verbose', action='store_true', help="print out logs")
args = parser.parse_args()

# Set OpenAPI key from environment or config file
api_key = os.environ.get("OPENAI_API_KEY")
if (api_key is None or api_key == "") and os.path.isfile(os.path.join(os.getcwd(), "keys.cfg")):
    cfg = config.Config('keys.cfg')
    api_key = cfg["OPENAI_API_KEY"]
openai.api_key = api_key

def llm(prompt, stop=["\n"]):
    response = openai.Completion.create(
      model="text-davinci-003",
      prompt=prompt,
      temperature=0,
      max_tokens=100,
      top_p=1,
      frequency_penalty=0.0,
      presence_penalty=0.0,
      stop=stop
    )
    return response["choices"][0]["text"]

# Introduce Handicap
# Introduce Reward in Observation?

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
        log_file_name = f"{args.env}_react_{args.max_turns}_turns.json"
        self.log_path = os.path.join(args.log_dir, log_file_name)
        self.log_data = {}
        
        # Initialize prompt template
        self.template = TemplateReAct(args.env, SETTING_MAP[args.env])

        # Initialize parser
        self.action_parser = ACTION_PARSER_MAP_REACT[args.env]

    def run_expr(self):
        try:
            for idx in tqdm(range(len(self.env.data_loader)), disable=self.args.verbose):
                # Reset variables per task episode
                self.env.reset(idx)
                observation, reward = None, None
                turn_history = {"thoughts": [], "actions": [], "observations": [], "rewards": [], "valid_action": []}
                record = self.env.data_loader.get(idx)

                # Create initial prompt variable
                prompt = self.template.get_init_msg() + self.template.get_demos() + \
                    self.template.get_query_msg(self.env.query)  
                if self.args.verbose:
                    print(f'Query {idx}: {self.env.query}')

                # Iterate for at most {args.max_turns} turns
                for turn in range(1, self.args.max_turns + 1):
                    # Determine thought and action
                    thought_action = llm(prompt + f"Thought {turn}:", stop=[f"\nObservation {turn}:"])
                    try:
                        thought, action = thought_action.strip().split(f"\nAction {turn}: ")
                    except:
                        # Retry action generation if initial `llm` call did not yield any action
                        print('ohh...', thought_action)
                        thought = thought_action.strip().split('\n')[0]
                        action = llm(prompt + f"Thought {turn}: {thought}\nAction {turn}:", stop=[f"\n"]).strip()
                    
                    # Parse action + execute in Intercode environment
                    action_parsed, is_code = self.action_parser(action)
                    if not is_code:
                        reward = 0
                        observation = f"Error executing query: Your last `execute` action did not contain {self.args.env} code"
                    else:
                        observation, reward, done, info = self.env.step(action_parsed)
                        valid_action = info[ACTION_EXEC]
                    
                    # Limit observation size due to context window thresholds for API call
                    if isinstance(observation, str) and len(observation) > 350:
                        observation = observation[:350]
                    elif isinstance(observation, list) and len(observation) > 25:
                        observation = observation[:25]

                    # Update Prompt with latest turn information
                    step_str = f"Thought {turn}: {thought}\nAction {turn}: {action}\nObservation {turn}: {observation}\n"
                    prompt += step_str
                    if self.args.verbose:
                        print(step_str)
                    
                    # Logging
                    turn_history["thoughts"].append(thought)
                    turn_history["actions"].append(action)
                    turn_history["observations"].append(str(observation)) # To avoid serialization issues
                    turn_history["rewards"].append(reward)
                    turn_history["valid_action"].append(valid_action)

                    if done:
                        break
                
                # Calculate reward if agent did not finish
                if not done:
                    observation, reward, done, info = self.env.step("submit")
                    turn_history["thoughts"].append("EXCEEDED MAX TURNS: submit")
                    turn_history["actions"].append("submit")
                    turn_history["observations"].append(str(observation)) # To avoid serialization issues
                    turn_history["rewards"].append(reward)
                    turn_history["valid_action"].append(valid_action)
                
                # Logging
                log_episode = {
                    "environment": self.env.name,
                    "dataset": self.args.data_path,
                    "task_id": idx,
                    "query": self.env.query,
                    "turn_history": turn_history,
                    "summary": {
                        "max_reward": reward,
                        "turns_taken": turn,
                        "turns_max": self.args.max_turns
                    }
                }
                if "hardness" in record:
                    log_episode["hardness"] = record["hardness"]
                self.log_data[idx] = log_episode

                if self.args.verbose:
                    print(f"Query {idx} Finished\n-Reward: {reward}\n-Turns: {turn+1}")

        except KeyboardInterrupt:
            print("Keyboard interrupt detected")
        finally:
            with open(self.log_path, "w") as fp:
                json.dump(self.log_data, fp, indent=2)
            self.env.close()

if __name__ == '__main__':
    expr_wrapper = ExperimentWrapper(args)
    expr_wrapper.run_expr()