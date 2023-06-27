import argparse, json, os
from intercode.envs import CTFEnv
from intercode.utils import IntercodeDataLoader
from tqdm import tqdm
from typing import Dict
from experiments.policies import ChatGPTPolicy


parser = argparse.ArgumentParser(description='GPT evaluation for CTF environment')
parser.add_argument('--data_path', type=str, default="./data/ctf/ctf_test.json", help='path to bash queries json file')
parser.add_argument('--max_turns', type=int, default=15, help='max number of interaction turns')
parser.add_argument('--dialogue_limit', type=int, help='maximum number of turns in the policy\'s dialogue to keep')
parser.add_argument('--log_dir', type=str, default=os.getcwd(), help="path to log directory")
parser.add_argument('--verbose', action='store_true', help="print out logs")
args = parser.parse_args()


if __name__ == '__main__':
    log_file_name = f"ctf-gpt.json"
    log_path = os.path.join(args.log_dir, log_file_name)
    log_data = {}
    data = IntercodeDataLoader(args.data_path)

    try:
        # Iterate through dataset
        for idx in tqdm(range(len(data))):
            task = data.get(idx)
            # Each task uses its own CTFEnv instance
            env = CTFEnv(f"ctf_task_{idx}", task, traj_dir="logs/ctf/", verbose=True)
            policy = ChatGPTPolicy(language="ctf", setting="Bourne Shell",
                template="ctf", dialogue_limit=args.dialogue_limit, model="gpt-4")
            policy.reset()
            turn_history = {"actions": [], "observations": [], "rewards": []}
            obs = env.observation
            reward = None

            for turn in range(args.max_turns):
                action, is_code = policy.forward(env.query, obs, reward, env.get_available_actions())
                obs, reward, done, info = env.step(action[0] if isinstance(action, list) else action)

                # Logging
                turn_history["actions"].append(action)
                turn_history["observations"].append(str(obs)) # To avoid serialization issues
                turn_history["rewards"].append(reward)

                # End episode upon perfect reward
                if reward == 1:
                    break
            
            env.close()
            max_reward = max(turn_history["rewards"])
            # count number of flag submissions
            num_submissions = sum(1 for i in turn_history["rewards"] if i == 1 or i == -1)

            log_episode = {
                "environment": env.name,
                "dataset": args.data_path,
                "task_id": idx,
                "query": env.query,
                "turn_history": turn_history,
                "summary": {
                    "max_reward": max_reward,
                    "max_reward_idx": turn_history["rewards"].index(max_reward),
                    "turns_taken": turn + 1,
                    "turns_max": args.max_turns,
                    "num_submissions": num_submissions
                }
            }
            log_data[idx] = log_episode
            if args.verbose:
                print(f"Query {idx} Finished\n-Reward: {max_reward}\n-Turns: {turn+1}\n-Submissions: {num_submissions}")
    except KeyboardInterrupt:
        print("Keyboard interrupt detected")
    finally:
        with open(log_path, "w") as fp:
            json.dump(log_data, fp, indent=2)
        if env.status != "stopped":
            env.close()