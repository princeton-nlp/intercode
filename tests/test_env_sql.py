import time

from mysql.connector import MySQLConnection
from mysql.connector.cursor import MySQLCursor
from typing import Dict

from intercode.envs.sql.sql_env import (
    SqlEnv
)

def preprocess(record: Dict) -> str:
    db = record["extra"]["db"]
    return f"use {db}"

data_path = "./data/test/sql_queries.csv"
image_name = "docker-env-sql"
env = SqlEnv(image_name, data_path=data_path, preprocess=preprocess)

def test_init():
    assert(isinstance(env.cnx, MySQLConnection))
    assert(isinstance(env.cur, MySQLCursor))

def test_step():
    env.reset(0)
    obs, _, done, _ = env.step("errant query")
    assert(obs.startswith("Error executing query"))
    assert(done == False)
    obs, _, done, _ = env.step("SELECT * FROM Student")
    assert(len(obs) == 34)
    assert(done == False)
    obs, reward, done, info = env.step("submit")
    assert(len(obs) == 34)
    assert(reward == 0.0)
    assert(done)

def test_get_intersect_items():
    lst1 = ["a", "b", "c", "a"]
    lst2 = ["b", "c", "a", "a"]
    my_dict = {"a": 2, "b": 1}
    assert(env.get_intersect_items(lst1, my_dict.copy()) == ["a", "b", "a"])
    assert(env.get_intersect_items(lst2, my_dict.copy()) == ["b", "a", "a"])
    my_dict = {}
    assert(env.get_intersect_items(lst1, my_dict.copy()) == [])
    assert(env.get_intersect_items(lst2, my_dict.copy()) == [])
    my_dict = {"e": 1, "f": 2}
    assert(env.get_intersect_items(lst1, my_dict.copy()) == [])
    assert(env.get_intersect_items(lst2, my_dict.copy()) == [])

def pytest_sessionfinish(session, exitstatus):
    env.close()