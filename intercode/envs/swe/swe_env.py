import os

from intercode.envs import (
  BashEnv, IntercodeEnv, AGENT_OBS, REWARD
)
from typing import Dict, Tuple

class SWEEnv(BashEnv):
    """Gym environmnet for SWE-bench"""
    name = "ic_swe"

    def __init__(self, image_name: str, **kwargs):
        IntercodeEnv.__init__(self, image_name, **kwargs)
        self.token = os.environ.get("GITHUB_TOKEN", "git")
    
    def reset_container(self) -> None:
        self.workdir = "/"
        folders = self.container.exec_run(self.clean_cmd('ls')).output.decode("utf-8")

        # Clone repository if not already cloned
        repo_name = self.record['repo'].replace("/", "__")
        if repo_name not in folders:
            self.logger.info(f"{repo_name} not found in container, cloning...")
            clone_cmd = f"git clone https://{self.token}@github.com/swe-bench/{repo_name}.git"
            self.container.exec_run(self.clean_cmd(clone_cmd))
        
        # TODO(?): Add logic for installing conda environment
        
        # Clean repository of any modifications + Checkout base commit
        self.workdir = f"/{repo_name}/"
        self.container.exec_run(self.clean_cmd("git status"), workdir=self.workdir)
        self.container.exec_run(self.clean_cmd("git restore ."), workdir=self.workdir)
        self.container.exec_run(self.clean_cmd("git reset HEAD ."), workdir=self.workdir)
        self.container.exec_run(self.clean_cmd("git clean -fdx"), workdir=self.workdir)
        self.container.exec_run(
            self.clean_cmd(f"git -c advice.detachedHead=false checkout {self.record['base_commit']}"),
            workdir=self.workdir)

        # TODO(?): Add logic to install repository at base commit

    def get_reward(self) -> Tuple[float, Dict]:
        # TODO(?): Add evaluation (Apply test patch + run testing script + parse logs & get results)
        return 0, {}
    
    def close(self):
        self.logger.info("Beginning environment shutdown...")
        self.container.stop()
        self.logger.info("Agent container stopped")