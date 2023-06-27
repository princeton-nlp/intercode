import math
from typing import Dict, List, Tuple
from intercode.envs.ic_env import (
    IntercodeEnv,
    AGENT_OBS, EVAL_OBS, CORRUPT_GOLD, ACTION_EXEC, REWARD
)
from intercode.utils import timeout

LANG_TO_ENTRYPOINT = {
    "bash": "/bin/bash -c",
    "python3": "python3 -c",
    "sql": "mysql -e"
}

class CTFEnv(IntercodeEnv):
    """Gym environment for CTF game"""
    name = "ic_ctf"

    def __init__(self, image_name: str, task: Dict, manual_mode: bool = False, **kwargs):
        super(CTFEnv, self).__init__(image_name, **kwargs)
        self.query, self.gold = task["query"], task["gold"]
        self.observation = self.query
        self.logger.info(f"Query: {self.query}")
        self.logger.info(f"Gold: {self.gold}")
        self.reward = None
        self.info = {}
        self.trajectory = []
        self.workdir = "/ctf"
        self.status = "running"
        self.manual_mode = manual_mode
    
    def reset(self) -> None:
        self.close()

    def step(self, action: str) -> Tuple[str, int, bool, Dict]:
        self.logger.info(f"Action: {action}")
        if action.startswith("submit"):
            _, _ = self.get_reward(action)
            if self.reward == 1:
                self.observation = "The submitted flag is correct."
            else:
                self.observation = "The submitted flag is incorrect."
            if "traj_dir" in self.kwargs and self.kwargs["traj_dir"]:
                self.traj_dir = self.kwargs["traj_dir"]
                self.save_trajectory()
            return self.observation, self.reward, True, self.info
            

        self.exec_action(action)
        self.logger.info(f"Observation: {self.observation}")
        self.trajectory.append((action, self.observation))
        return self.observation, 0, False, self.info

    def exec_action(self, action: str) -> None:
        """Executes action in bash shell"""
        is_cd_flag = action.startswith("cd")
        if is_cd_flag:
            cd_arg = action[action.index("cd ")+3:].strip()
            new_path = self.simplify_path(self.workdir, cd_arg)
            action = f"cd {new_path}"
        
        try:
            with timeout():
                exit_code, output = self.container.exec_run(
                    self.clean_cmd(action),
                    workdir="/" if is_cd_flag else self.workdir)
                self.observation = output.decode("utf-8")
                self.info[ACTION_EXEC] = exit_code == 0
        except TimeoutError:
            self.observation = f"Command timed out"
            self.info[ACTION_EXEC] = False
        except Exception as e:
            print(e)
            self.observation = "Malformed command"
            self.info[ACTION_EXEC] = False
        
        if is_cd_flag and self.info[ACTION_EXEC]:
            self.workdir = new_path
            
    def get_reward(self, action) -> Tuple[float, Dict]:
        """
        The reward is calculated as a binary value (1/-1)
        """        
        # Parse the flag
        flag = action.split(" ")[1]
        reward = 1 if flag == self.gold else -1
        info = {}
        info[REWARD] = reward
        self.reward = reward 
        self.info.update(info)
        self.logger.info(f"Info: {self.info}")
        self.logger.info(f"Reward: {self.reward}")
        return reward, info

    def close(self):
        self.logger.info("Beginning environment shutdown...")
        # clean up
        self.container.stop()
        self.status = "stopped"
        self.container.remove()
    
    ############################
    ### MARK: Helper methods ###
    ############################

    def clean_cmd(self, action: str) -> str:
        """Cleans action string"""
        if action.startswith("cmd"):
            action = action[4:].strip()
        if self.manual_mode:
            return f"{LANG_TO_ENTRYPOINT['bash']} \"{action}\""
        return action

    def simplify_path(self, current: str, changed: str) -> str:
        """Resolves path from current working directory path and the argument of the `cd` command"""
        if not changed:
            return current
        if changed[0] == "/":
            current = ""

        path = []
        
        for segment in (current + "/" + changed).split("/"):
            if segment == "..":
                if path:
                    path.pop()
            elif segment and segment != ".":
                path.append(segment)

        return "/" + "/".join(path)