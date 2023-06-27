import math
import mysql.connector

from collections import Counter
from itertools import chain, groupby
from operator import itemgetter
from scipy.stats import kendalltau
from typing import Dict, List, Tuple

from intercode.envs.ic_env import (
    IntercodeEnv,
    AGENT_OBS, EVAL_OBS, CORRUPT_GOLD, ACTION_EXEC, REWARD
)

SQL_CONFIG = {
    'host': '127.0.0.1',
    'port': 3307,
    'user': 'admin',
    'password': 'admin',
}

class SqlEnv(IntercodeEnv):
    """Gym environment for SQL"""
    name = "ic_sql"

    def __init__(self, image_name: str, **kwargs):
        super(SqlEnv, self).__init__(image_name, **kwargs)

        # Establish connection with container
        self.cnx = mysql.connector.connect(**SQL_CONFIG)
        self.cur = self.cnx.cursor(buffered=True)

    def exec_action(self, action: str) -> None:
        try:
            self.cur.execute(action)
            self.observation = None
            if self.cur.description is not None:
                self.observation = self.cur.fetchall()
            self.info[ACTION_EXEC] = True
        except Exception as err:
            self.observation = f"Error executing query: {err.msg}"
            self.info[ACTION_EXEC] = False
    
    def get_reward(self) -> Tuple[float, Dict]:
        """
        The reward currently is calculated as an intersection over union
        between the agent's answer and the gold answer.
        """
        self.info = {}
        self.info[AGENT_OBS] = self.observation

        # Run gold command(s) in evaluation container
        try:
            self.cur.execute(self.gold)
            self.info[CORRUPT_GOLD] = False
        except (mysql.connector.errors.ProgrammingError, mysql.connector.errors.DatabaseError) as err:
            self.info[EVAL_OBS] = f"Error executing query: {err.msg}"
            self.info[CORRUPT_GOLD] = True
        self.info[EVAL_OBS] = []
        if self.cur.description is not None:
            self.info[EVAL_OBS] = self.cur.fetchall()

        # Calculate Rewards
        if isinstance(self.info[AGENT_OBS], list) and isinstance(self.info[EVAL_OBS], list):
            # Stringify all tuples to avoid comparator bugs
            list_agent = [str(x) for x in self.info[AGENT_OBS]]
            list_eval = [str(x) for x in self.info[EVAL_OBS]]

            # Reward: Intersection over Union
            dist_agent = Counter(list_agent)
            dist_eval  = Counter(list_eval)
            intersection = dist_agent & dist_eval

            get_key, get_val = itemgetter(0), itemgetter(1)
            merged_data = sorted(chain(dist_agent.items(), dist_eval.items()), key=get_key)
            union = {k: max(map(get_val, g)) for k, g in groupby(merged_data, key=get_key)}

            if len(union) == 0:
                # Outputs are both empty
                self.info[REWARD] = 1
            else:
                total_intersect = sum([v for _, v in intersection.items()])
                total_union = sum([v for _, v in union.items()])
                self.info[REWARD] = total_intersect * 1. / total_union

                # Reward: Scale reward by sorting accuracy
                if len(intersection) > 0:
                    list_agent_intx = self.get_intersect_items(list_agent.copy(), intersection.copy())
                    list_eval_intx = self.get_intersect_items(list_eval.copy(), intersection.copy())
                    assert(len(list_agent_intx) == len(list_eval_intx))
                    sort_correlation = kendalltau(list_agent_intx, list_eval_intx, nan_policy='omit').statistic
                    
                    # Scale reward by sort correlation if value is not NaN
                    if not math.isnan(sort_correlation) and isinstance(sort_correlation, float):
                        self.info[REWARD] = round(sort_correlation * self.info[REWARD], 2)
        else:
            self.info[REWARD] = 0.0

        self.reward = self.info[REWARD]

        # Cast observations to strings to avoid JSON serialization errors
        self.info[AGENT_OBS] = str(self.info[AGENT_OBS])
        self.info[EVAL_OBS] = str(self.info[EVAL_OBS])

        self.logger.info(f"Info: {self.info}")
        self.logger.info(f"Reward: {self.reward}")
        return self.reward, self.info

    def close(self):
        self.logger.info("Beginning environment shutdown...")
        self.cur.close()
        self.cnx.close()
        self.container.stop()
        self.logger.info("Agent, evaluation containers stopped")
    
    ############################
    ### MARK: Helper methods ###
    ############################
    def get_intersect_items(self, my_list: List, my_dict: Dict) -> List:
        """
        Returns the intersection of a list and a dictionary.
        """
        result = []
        for item in my_list:
            if item in my_dict:
                my_dict[item] -= 1
                if my_dict[item] == 0:
                    del my_dict[item]
                result.append(item)
        return result