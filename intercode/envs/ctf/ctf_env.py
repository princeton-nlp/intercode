from intercode.envs import (
    BashEnv, IntercodeEnv, AGENT_OBS, REWARD
)
from typing import Dict, Tuple

class CTFEnv(BashEnv):
    """Gym environment for CTF game"""
    name = "ic_ctf"

    def __init__(self, image_name: str, **kwargs):
        IntercodeEnv.__init__(self, image_name, **kwargs)

    def get_reward(self) -> Tuple[float, Dict]:
        self.info = {}

        # Get flag from `submit` action
        last_action = self.trajectory[-1][0]
        flag = last_action.split(" ")[1]

        # Reward of 1 if flag is correct, 0 otherwise
        self.reward = 1 if flag.lower() == self.gold.lower() else 0
        self.info[AGENT_OBS] = flag
        self.info[REWARD] = self.reward

        self.logger.info(f"Info: {self.info}")
        self.logger.info(f"Reward: {self.reward}")
        return self.reward, self.info
    
    def close(self):
        self.logger.info("Beginning environment shutdown...")
        self.container.stop()
        self.logger.info("Agent container stopped")
    
    def clean_cmd(self, action: str) -> str:
        if any([action.strip().startswith(x) for x in ["python3 -c", "python -c"]]):
            return action
        def clean_command(command):
            # Escape single quotes and enclose the command in single quotes
            cleaned_command = "/bin/bash -c '" + command.replace("'", "'\\''") + "'"
            return cleaned_command
        return clean_command(action.strip())