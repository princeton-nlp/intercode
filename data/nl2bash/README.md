# NL2Bash Data Augmentation

* Adopted from [nl2bash](https://github.com/TellinaTool/nl2bash) by manual curation
* This dataset consists of 200 natural language to bash command <query, gold> pairs

## Organization
- [fs_1](nl2bash_fs_1.json) has 60 queries based on the file system defined in [setup_fs_1](../../docker/bash_scripts/setup_nl2b_fs_1.sh)
- [fs_2](nl2bash_fs_1.json) has 53 queries based on the file system defined in [setup_fs_2](../../docker/bash_scripts/setup_nl2b_fs_2.sh)
- [fs_3](nl2bash_fs_3.json) has 60 queries based on the file system defined in [setup_fs_3](../../docker/bash_scripts/setup_nl2b_fs_3.sh)
- [fs_4](nl2bash_fs_4.json) has 27 general bash queries that are not grounded to any specific file system