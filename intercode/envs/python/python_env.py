import ast
import docker
import rpyc

from multiprocessing import Process
from subprocess import Popen, PIPE

from typing import Dict, Tuple

from intercode.envs.ic_env import IntercodeEnv, ACTION_EXEC

HOST_PORT = 3006
RESET_KEYWORD = "RESET_CONTAINER_SPECIAL_KEYWORD"

class PythonEnv(IntercodeEnv):
    """Gym environment for python shell"""
    name = "ic_python"

    def __init__(self, image_name: str, **kwargs):
        kwargs['ports'] = {f"{HOST_PORT}/tcp": HOST_PORT}
        super(PythonEnv, self).__init__(image_name, **kwargs)
        self.conn = rpyc.connect("localhost", HOST_PORT)
    
    def reset_container(self) -> None:
        self.conn.root.execute(RESET_KEYWORD)
    
    def exec_action(self, action: str) -> None:
        try:
            action = self.wrap_with_print(action)
            self.observation = self.conn.root.execute(action)
            self.info[ACTION_EXEC] = False
        except Exception as err:
            self.observation = f"Error executing action: {err}"
            self.info[ACTION_EXEC] = True
    
    def get_reward(self) -> Tuple[float, Dict]:
        return 0.0, {}
    
    def close(self):
        self.logger.info("Beginning environment shutdown...")
        self.container.stop()
        self.logger.info("Agent container stopped")
    
    ############################
    ### MARK: Helper methods ###
    ############################
    def wrap_with_print(self, command):
        # Parse the command as an AST (Abstract Syntax Tree)
        parsed_command = ast.parse(command.strip())

        # Check if the command contains an assignment node, print node, or import
        has_assignment = any(isinstance(node, ast.Assign) for node in ast.walk(parsed_command))
        has_print = any(isinstance(node, ast.Call) and isinstance(node.func, ast.Name) and node.func.id == 'print' for node in ast.walk(parsed_command))
        has_import = any(isinstance(node, ast.Import) for node in ast.walk(parsed_command))

        # Wrap the command with "print" if it's not an assignment and does not have a "print" statement
        if not any([has_assignment, has_print, has_import]):
            return f"print({command})"
        else:
            return command