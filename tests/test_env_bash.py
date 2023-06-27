import time

from docker.models.containers import Container

from intercode.envs.bash.bash_env import (
    BashEnv,
    GIT_STATUS_SCRIPT
)

data_path = "./data/test/bash_queries.json"
image_name = "intercode-bash"

env = BashEnv(image_name, data_path=data_path)

def test_init():
    assert(isinstance(env.container_eval, Container))

def test_reset():
    env.reset(0)
    assert(env.workdir == "/")
    status = env.container.exec_run(env.clean_cmd(GIT_STATUS_SCRIPT)).output.decode("utf-8")
    assert(env.parse_status(status) == [])

def test_step():
    env.reset(0)
    env.step("echo hello")
    assert(env.observation == "hello\n")
    assert(env.trajectory[-1] == ("echo hello", "hello\n"))
    env.step("cd /testbed/")
    assert(env.observation == '')
    assert(env.workdir == "/testbed")
    assert(env.trajectory[-1] == ("cd /testbed/", ''))
    obs, reward, done, info = env.step("submit")
    assert(obs == '')
    assert(done == True)
    assert(reward == 0.67)

def test_exec_action():
    env.reset(0)
    env.exec_action("echo hello")
    assert(env.observation == "hello\n")
    env.exec_action("cd /testbed/")
    assert(env.observation == '')
    assert(env.workdir == "/testbed")

def test_parse_status():
    test_input_1 = """
        M README.md
        M environment.yml
        M tests/test_reward_bash.py
        M tests/test_reward_sql.py
        ?? tests/__init__.py
        ?? tests/intercode/
        """
    test_output_1 = [
        ("README.md", "M"), ("environment.yml", "M"), ("tests/test_reward_bash.py", "M"),
        ("tests/test_reward_sql.py", "M"), ("tests/__init__.py", "??"), ("tests/intercode/", "??")
    ]
    assert(env.parse_status(test_input_1) == test_output_1)

def test_simplify_path():
    assert(env.simplify_path("/", ".") == "/")
    assert(env.simplify_path("/", "../..") == "/")
    assert(env.simplify_path("/home/intercode", ".") == "/home/intercode")
    assert(env.simplify_path("/home/intercode", "..") == "/home")
    assert(env.simplify_path("/home/intercode", "../another_dir") == "/home/another_dir")
    assert(env.simplify_path("/home/intercode", "../another_dir/..") == "/home")
    assert(env.simplify_path("/home/intercode", "../..") == "/")
    assert(env.simplify_path("/home/intercode", "./..") == "/home")
    assert(env.simplify_path("/home/intercode", "///") == "/")

def pytest_sessionfinish(session, exitstatus):
    env.close()