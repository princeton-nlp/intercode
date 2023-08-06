import argparse
import readline
import signal

from intercode.envs import (
    BashEnv, PythonEnv, SqlEnv
)
from experiments.policies import HumanPolicy
from typing import Dict


MAP_DEMO_TO_IMAGE_DATA = {
    "bash": {"env": BashEnv, "image_name": "intercode-bash", "data_path": "./data/test/bash_queries.json"},
    "python": {"env": PythonEnv, "image_name": "intercode-python"},
    "sql": {"env": SqlEnv, "image_name": "docker-env-sql", "data_path": "./data/test/sql_queries.csv"}
}


def preprocess_sql(record: Dict) -> str:
    db = record["extra"]["db"]
    return f"use {db}"


def main(demo: str):
    if demo not in MAP_DEMO_TO_IMAGE_DATA:
        raise ValueError(f"Demo {demo} not supported (Specify one of [bash, python, sql])")
    image_name = MAP_DEMO_TO_IMAGE_DATA[demo]["image_name"]
    data_path = MAP_DEMO_TO_IMAGE_DATA[demo]["data_path"] if "data_path" in MAP_DEMO_TO_IMAGE_DATA[demo] else None
    preprocess = preprocess_sql if demo == 'sql' else None

    env = MAP_DEMO_TO_IMAGE_DATA[demo]["env"](image_name, data_path=data_path, verbose=True, preprocess=preprocess)
    
    try:
        for _ in range(3):
            env.reset()
            policy = HumanPolicy()
            obs = env.observation
            done = False
            query = env.query if hasattr(env, "query") else None

            while not done:
                action = policy.forward(query, obs, env.get_available_actions())
                if action == "exit":
                    raise KeyboardInterrupt
                obs, reward, done, info = env.step(action)
    except KeyboardInterrupt:
        print("Keyboard interrupt detected")
        env.close()


if __name__ == '__main__':
    argparse = argparse.ArgumentParser()
    argparse.add_argument("demo", type=str, help="Environment demo to run [bash, python, sql]")
    args = argparse.parse_args()
    main(**vars(args))