# InterCode Data
This folder contains 1. the data for all datasets that have been converted to be InterCode-compatible and operable with one of the `bash`, `python`, or `sql` InterCode environments, and 2. the evaluation results from experiments presented in the main paper.

The directory is laid out as follows:
```
├── bash/
│   ├── nl2bash/
│   └── test_bash_queries.json
├── ctf
├── python
│   ├── apps/
│   └── mbpp/
├── results
│   ├── bash/
│   ├── ctf/
│   └── sql/
└── sql
    ├── bird/
    └── spider/
```
The `bash`, `python`, and `sql` folders contain corresponding datasets that have been migrated to be compatible with the named InterCode environment. Each subfolder usually contains a `README.md` describing how the conversion was performed, a `transform.py` that performs the described conversion, and data files that are the task instances and any additional setup required to run the dataset on InterCode.

The `results` directory has model-specific folders, each of which contains experiment results for the model run with different strategies (i.e. Try Again, ReAct, Plan & Solve). Each json file contains a list of trajectories, where each trajectory corresponds to information from a single task episode.

In case any of the data files are corrupted or altered during local use, we provide this [link](https://drive.google.com/drive/folders/1iquZDwvcvJoaPnmhwYr8zu58rzmEpF9T?usp=drive_link) that contains all the original datasets presented in this section.