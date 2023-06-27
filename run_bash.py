import readline

from intercode.envs import BashEnv
from experiments.policies import HumanPolicy
from typing import Dict

if __name__ == '__main__':
    data_path = "./data/test/bash_queries.json"
    image_name = "intercode-bash"

    env = BashEnv(image_name, data_path=data_path, traj_dir="logs/test/", verbose=True)

    try:
        for idx in range(3):
            env.reset()
            policy = HumanPolicy()
            obs = env.observation
            done = False
            query = env.query if hasattr(env, "query") else ""

            while not done:
                action = policy.forward(query, obs, env.get_available_actions())
                obs, reward, done, info = env.step(action)
                    
    except KeyboardInterrupt:
        print("Keyboard interrupt detected")
    finally:
        env.close()