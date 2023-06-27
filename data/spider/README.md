# Spider 1.0 Dataset Transformation
* [Link](https://yale-lily.github.io/spider) to Spider Landing Page
* [Link](https://github.com/taoyds/spider) to Spider Github Page
* [Link](https://drive.google.com/uc?export=download&id=1TqleXec_OykOYFREKKtschzY29dUcVAQ) to Spider Dataset

## Set Up
To create the `data/spider/dev_spider.json` file, do the following:
1. Download Spider dataset from the above link
2. Run the below script with the local path to the Spider dataset as an argument
```sh
python transform_spider.py --data_path <Path to spider data folder>
```

## Dataset Description
The script uses data from the `dev.json` file of the Spider dataset, mapping these original fields to the following new keys:
```json
{
    "db_id": "db",
    "query": "gold",
    "question": "query",
}
```
In addition, the InterCode dataset adds two additional fields:
* `hardness`: [`easy`, `medium`, `hard`, `extra`] determined from `eval_hardness` function in `evaluation.py` (taken from original Spider code)
* `db_tables`: `Dict` of table names to their respective columns. These tables are retrieved based on the query's associated `db`.

The new dataset is a list of dictionaries, where each dictionary corresponds to a single task consisting of the following fields:
```yml
"db": Database being used for this query
"gold": Correct SQL command
"query": Natural Language query describing request
"hardness": [`easy`, `medium`, `hard`, `extra`]
"db_tables": {`table_name`: [`column_names`]}
```

There are **1034** rows in the final dataset.

## SQL Conversion
We release a unified MySQL version of the Spider 1.0 dev dataset [here](spider_dev.sql).
To recreate, do the following:
1. Install MySQL following [this](https://dev.mysql.com/doc/refman/8.0/en/installing.html)
2. Before conversion, some existing mismatches in primary and foreign key data types were resolved
3. Convert SQLite databases to MySQL by running
```sh
bash mysql_convert.sh
```
4. Then create a MySQL dump using 
```sh
mysqldump -u <your_username> -p --all-databases > spider_dev.sql
```