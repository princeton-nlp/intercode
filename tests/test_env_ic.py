import glob, os
import pandas as pd

from docker.models.containers import Container

from intercode.envs import IntercodeEnv
from intercode.utils.data_loader import IntercodeDataLoader

data_path = "./data/test/bash_queries.json"
image_name = "intercode-bash"

# Set abstract methods to empty set to make class instantiable
IntercodeEnv.__abstractmethods__ = set()

env = IntercodeEnv(image_name, data_path=data_path)

def test_init():
    assert("verbose" not in env.kwargs and env.logger.disabled)
    assert(isinstance(env.data_loader, IntercodeDataLoader))
    assert("preprocess" not in env.kwargs and env.preprocess == None)
    assert(env.image_name == image_name)
    assert(isinstance(env.container, Container))

def test_reset():
    env.reset(0)
    assert(env.query_idx == 0)
    data = pd.read_json(data_path).iloc[0]
    assert(env.query == data["query"])
    assert(env.gold == data["gold"])
    assert(env.info == {})
    assert(env.observation == env.query)
    assert(env.reward == None)
    assert(env.trajectory == [])

def test_save_trajectory():
    env.traj_dir = "./test_dir/"
    env.save_trajectory()
    log_files = glob.glob(env.traj_dir + f"logs_{env.name}/log_*.json")
    assert(len(log_files) == 1)
    os.remove(log_files[0])
    os.rmdir(env.traj_dir + f"logs_{env.name}/")
    os.rmdir(env.traj_dir)