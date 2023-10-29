# BIRD-SQL Dataset Transformation
* [Link](https://bird-bench.github.io/) to BIRD-SQL Landing Page

## Set Up
To recreate the `ic_bird.json` and `ic_bird_dbs.sql` files, do the following:
1. Download the `dev` dataset from the BIRD-SQL landing page, or from [here](https://bird-bench.oss-cn-beijing.aliyuncs.com/dev.zip).
2. Run the below script with the local path to the BIRD-SQL dataset as an argument
```sh
python transform.py <Path to BIRD dataset>
```
* You can also run this script on the 

## Dataset Description
The script performs very simple adjustments to the BIRD-SQL dataset to create an InterCode compatible version.

To create the `ic_bird.json` task instances, the `transform.py` script iterates through the `dev.json` file and performs the following steps:
1. Changes the names of the following fields:
    * `question` &#8594; `query`
    * `db_id` &#8594; `db`
2. Retrieves each task instance's corresponding solution from the `dev_gold.sql` file and saves it to the `gold` key.

To create the `ic_bird_dbs.sql` database, the `transform.py` script performs the following steps:
1. Create a mapping of each database to its tables based on `.csv` files within the `dev_databases` folder.
2. Iterates through the mapping to create a single `ic_bird_dbs.sql` file that is the procedure for creating all databases + tables in a MySQL compatible format.

The `ic_bird.json` and `ic_bird_dbs.sql` currently reflect the task instances and tables for the `debit_card_specializing`, `superhero`, and `toxicology` databases. Upon resolving minor SQLlite to MySQL conversion issues, we plan on migrating more of the BIRD-SQL dataset to be InterCode compatible.

Note that the transformation procedure can also be applied to the `train` dataset (linked [here](https://bird-bench.oss-cn-beijing.aliyuncs.com/train.zip)) with a manual adjustment of modifying any `dev` references in the `transform.py` script to `train`.