import argparse, json, os
from intercode.envs import (
    BashEnv, SqlEnv, ACTION_EXEC
)
from tqdm import tqdm
from typing import Dict
from experiments.policies import (
    PalmChatPolicy, PalmCompletionPolicy, HFChatPolicy
)
from experiments.utils import HANDICAP_MAP

parser = argparse.ArgumentParser(description='N-turn evaluation for Intercode environment')
parser.add_argument('--data_path', type=str, help='path to dataset to evaluate on')
parser.add_argument('--dialogue_limit', type=int, help='maximum number of turns in the policy\'s dialogue to keep')
parser.add_argument('--env', choices=['sql', 'bash'], help='Intercode environment to run eval on')
parser.add_argument('--handicap', action='store_true', help='enable handicap')
parser.add_argument('--image_name', type=str, help='name of docker image to build environment with')
parser.add_argument('--log_dir', type=str, help='folder to save experiment run log file to')
parser.add_argument('--max_turns', type=int, help='max number of interaction turns')
parser.add_argument('--policy', choices=['chat', 'complete'], help="policy to use for evaluation")
parser.add_argument('--template', choices=['v1', 'v2', 'v3', 'game', 'game_sql', 'v4'], help="template to use for prompting strategy")
parser.add_argument('--verbose', action='store_true', help="print out logs")
parser.add_argument('--model', type=str, help="model to use for policy")
args = parser.parse_args()

SETTING_MAP = {
    "sql": "MySQL Database",
    "bash": "Bourne Shell"
}

def preprocess_sql(record: Dict) -> str:
    db = record["extra"]["db"]
    return f"use {db}"

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
        log_file_name = f"{self.env.name}_multiturn_starchat_{args.max_turns}_turns.json"
        self.log_path = os.path.join(args.log_dir, log_file_name)
        self.log_data = {}

        # Initialize Policy
        self.policy = None
        if args.policy == 'chat':
            self.policy = HFChatPolicy(language=args.env, setting=SETTING_MAP[args.env],
                template=args.template, dialogue_limit=args.dialogue_limit, model=args.model)
        elif args.policy == 'complete':
            self.policy = PalmCompletionPolicy(language=args.env, setting=SETTING_MAP[args.env], template=args.template, dialogue_limit=args.dialogue_limit, model=args.model)
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
                        observation, _, _, info = self.env.step(action)
                        valid_action = info[ACTION_EXEC]
                        _, reward, done, info = self.env.step("submit")
                    
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
                    if reward == 1:
                        break
                
                max_reward = max(turn_history["rewards"])
                log_episode = {
                    "environment": self.env.name,
                    "dataset": self.args.data_path,
                    "task_id": idx,
                    "query": self.env.query,
                    "turn_history": turn_history,
                    # "info": info,
                    "summary": {
                        "max_reward": max_reward,
                        "max_reward_idx": turn_history["rewards"].index(max_reward),
                        "turns_taken": turn + 1,
                        "turns_max": self.args.max_turns,
                    }
                }
                if "extra" in record and "hardness" in record["extra"]:
                    log_episode["hardness"] = record["extra"]["hardness"]
                self.log_data[idx] = log_episode

                if self.args.verbose:
                    print(f"Query {idx} Finished\n-Reward: {max_reward}\n-Turns: {turn+1}")
                
                # Save log data every 5 episodes
                if idx % 5 == 0:
                    with open(self.log_path, "w") as fp:
                        json.dump(self.log_data, fp, indent=2)

        except KeyboardInterrupt:
            print("Keyboard interrupt detected")
        finally:
            with open(self.log_path, "w") as fp:
                json.dump(self.log_data, fp, indent=2)
            self.env.close()


if __name__ == '__main__':
    expr_wrapper = ExperimentWrapper(args)
    expr_wrapper.run_expr()
