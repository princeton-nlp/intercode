import time
from rich import print
from typing import Dict
from intercode.envs import SqlEnv, AGENT_OBS

def test_sql_reward_correctness():
    def preprocess(record: Dict) -> str:
        db = record["extra"]["db"]
        return f"use {db}"

    data_path = "./data/spider/dev_spider.json"
    image_name = "docker-env-sql"
    env = SqlEnv(image_name, data_path=data_path, preprocess=preprocess)
    total, errors = 0, []

    for index, row in env.data_loader.data.iterrows():
        start = time.time()
        env.reset(index)

        # Execute gold command against query
        _, _, _, _ = env.step(row["gold"])
        _, reward, _, info = env.step("submit")
        total += time.time() - start
        
        if isinstance(info[AGENT_OBS], str):
            # Catch errant SQL gold commands
            errors.append((index, info[AGENT_OBS]))
        else:
            assert(reward == 1)
    
    print("----REPORT----\n" + \
        f"- Execution Time per Query: {round(total/len(env.data_loader.data), 3)}s\n" + \
        f"- {len(errors)} Queries with errant gold commands: {errors}" + \
        "\n----")
    env.close()