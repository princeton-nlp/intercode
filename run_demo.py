import argparse
import readline

from intercode.envs import (
    BashEnv, PythonEnv, SqlEnv, CTFEnv, SWEEnv
)
from experiments.policies import HumanPolicy
from typing import Dict, List


def preprocess_ctf(record: Dict) -> List:
    cmds = [f"cd /ctf/{record['task_id']}"]
    if "setup" in record:
        cmds.append(record["setup"])
    return cmds

def preprocess_sql(record: Dict) -> List:
    db = record["db"]
    return [f"use {db}"]

DEMO_MAP = {
    "bash": {"env": BashEnv, "image_name": "intercode-nl2bash", "data_path": "./data/nl2bash/nl2bash_fs_1.json"},
    "python": {"env": PythonEnv, "image_name": "intercode-python", "data_path": "./data/python/mbpp/ic_mbpp.json"},
    "sql": {"env": SqlEnv, "image_name": "docker-env-sql", "data_path": "./data/sql/bird/ic_bird.json", "preprocess": preprocess_sql},
    "ctf": {"env": CTFEnv, "image_name": "intercode-ctf", "data_path": "./data/ctf/ic_ctf.json", "preprocess": preprocess_ctf},
    "swe": {"env": SWEEnv, "image_name": "intercode-swe", "data_path": "./data/swe-bench/ic_swe_bench.json"}
}


def main(demo: str):
    if demo not in DEMO_MAP:
        raise ValueError(f"Demo {demo} not supported (Specify one of [bash, python, sql])")
    image_name = DEMO_MAP[demo]["image_name"]
    data_path = DEMO_MAP[demo]["data_path"] if "data_path" in DEMO_MAP[demo] else None
    preprocess = DEMO_MAP[demo]["preprocess"] if "preprocess" in DEMO_MAP[demo] else None

    env = DEMO_MAP[demo]["env"](image_name, data_path=data_path, verbose=True, preprocess=preprocess)
    
    try:
        for _ in range(3):
            env.reset()
            policy = HumanPolicy()
            obs = env.observation
            done = False
            query = env.query if hasattr(env, "query") else None

            while not done:
                action = policy.forward(query, obs, env.get_available_actions())
                obs, reward, done, info = env.step(action)
    except KeyboardInterrupt:
        print("Exiting InterCode environment...")
    finally:
        env.close()


if __name__ == '__main__':
    argparse = argparse.ArgumentParser()
    argparse.add_argument("demo", type=str, help="Environment demo to run [bash, python, sql]")
    args = argparse.parse_args()
    main(**vars(args))