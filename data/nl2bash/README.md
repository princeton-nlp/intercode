# NL2Bash Dataset Transformation
* [Link](https://github.com/TellinaTool/nl2bash) to NL2Bash.

## Dataset Description
This dataset consists of 200 natural language to bash command `[query, gold]` pairs acquired from the NL2Bash dataset.
To ensure that the `gold` solutions to each query are non-trivial, entities such as folders and files have been renamed in both `query` and `gold` in order to ground the solution in a file system.

To this end, we also create four different file systems for a more diverse evaluation setting:
* [fs_1](nl2bash_fs_1.json) has 60 queries based on the file system defined in [setup_fs_1](../../docker/bash_scripts/setup_nl2b_fs_1.sh)
* [fs_2](nl2bash_fs_1.json) has 53 queries based on the file system defined in [setup_fs_2](../../docker/bash_scripts/setup_nl2b_fs_2.sh)
* [fs_3](nl2bash_fs_3.json) has 60 queries based on the file system defined in [setup_fs_3](../../docker/bash_scripts/setup_nl2b_fs_3.sh)
* [fs_4](nl2bash_fs_4.json) has 27 general bash queries that are not grounded to any specific file system