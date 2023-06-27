import readline

from intercode.envs import CTFEnv
from intercode.utils import IntercodeDataLoader
from experiments.policies import HumanPolicy


if __name__ == '__main__':
    data_path = "./data/ctf/ctf_test.json"
    data = IntercodeDataLoader(data_path)
    try:
        for idx in range(2):
            task = data.get(idx)
            env = CTFEnv(f"ctf_task_{idx}", task, manual_mode=True, traj_dir="logs/ctf/", verbose=True)
            policy = HumanPolicy()
            obs = env.observation
            query = env.query if hasattr(env, "query") else ""
            done = False

            while not done:
                action = policy.forward(query, obs, env.get_available_actions())
                obs, reward, done, info = env.step(action)
            else:
                env.close()
                    
    except KeyboardInterrupt:
        print("Keyboard interrupt detected")
    finally:
        if env.status != "stopped":
            env.close()