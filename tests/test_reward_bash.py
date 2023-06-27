import time
from rich import print
from intercode.envs import BashEnv

def test_bash_reward_correctness():
    data_path = "./data/test/bash_queries.json"
    image_name = "intercode-bash"
    env = BashEnv(image_name, data_path=data_path)
    total = 0

    for index, row in env.data_loader.data.iterrows():
        start = time.time()
        env.reset(index)

        # Execute gold command against query
        _, _, _, _ = env.step(row["gold"])
        _, reward, done, info = env.step("submit")
        total += time.time() - start

        # Ensure file system states are identical
        assert(info["reward"]["file_diff"] == 0.33)
        assert(info["reward"]["file_changes"] == 0.33)

        # Ensure outputs are similar (some flexibility due to TFIDF vectorization)
        assert(abs(info["reward"]["answer_similarity"] - 0.33) < 0.1)
    
    print(f'Execution Time Per Query: {total/env.data_loader.data.shape[0]}')
    
    env.close()

