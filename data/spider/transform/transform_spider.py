import argparse, json, os, random

from typing import List
from evaluation import Evaluator
from process_sql import Schema, get_schema, get_sql

import nltk
nltk.download('punkt')

"""
Example Usage:
python transform_spider.py --data_path ~/Desktop/spider --split dev
"""
parser = argparse.ArgumentParser(description='Script to transform Spider SQL data to Intercode compatible format')
parser.add_argument('--data_path', type=str, help='path to spider data folder')
parser.add_argument('--split', choices=["train", "dev"], help='which data split to create data json file for')
args = parser.parse_args()

cut_spaces = lambda val: " ".join(val.split())

def get_hardness(db_dir: str, g: List):
    g_str, db = g
    db = os.path.join(db_dir, db, db + ".sqlite")
    evaluator = Evaluator()
    schema = Schema(get_schema(db))
    g_sql = get_sql(schema, g_str)
    return evaluator.eval_hardness(g_sql)

if __name__ == '__main__':
    # Load relevant `spider` files for Intercode dataset
    path_to_spider = args.data_path
    db_dir = f"{path_to_spider}/database/"
    tables_spider = json.load(open(f"{path_to_spider}/tables.json", "r"))

    # Determine which data split to create dataset from
    json_path = "train_spider.json" if args.split == "train" else "dev.json"
    sql_path = "train_gold.sql" if args.split == "train" else "dev_gold.sql"
    json_spider = json.load(open(f"{path_to_spider}/{json_path}", "r"))
    with open(f"{path_to_spider}/{sql_path}") as f:
        glist = [l.strip().split('\t') for l in f.readlines() if len(l.strip()) > 0]

    # Put together `db` => `table + desc` mapping
    db_to_tables = {}
    for db in tables_spider:
        db_to_tables[db["db_id"]] = {}
        for idx, table_name in enumerate(db["table_names_original"]):
            tables = [x[1] for x in db["column_names_original"] if x[0] == idx]
            db_to_tables[db["db_id"]][table_name] = tables
    
    # Construct `spider` dataset for Intercode
    mapping = {
        "db_id": "db",
        "query": "gold",
        "question": "query",
    }

    # Go through dev.json data
    transform_spider = []
    skipped = 0
    for idx, value in enumerate(json_spider):
        data = {}
        # Keep db, gold, query fields
        for k, v in mapping.items():
            data[v] = cut_spaces(value[k]) if v == "gold" else value[k]
            
        # Verify glist[idx] maps to current gold, db fields
        if cut_spaces(glist[idx][0]) != data["gold"] or glist[idx][1] != data["db"]:
            skipped += 1
            continue
        
        # Get hardness, relevant tables to query
        data["hardness"] = get_hardness(db_dir, glist[idx])
        data["db_tables"] = db_to_tables[data["db"]]
        transform_spider.append(data)

    # Verify transform_spider is same dimensions as original
    print(f'Skipped {skipped} pairs')
    random.Random(33).shuffle(transform_spider)

    with open(f"{args.split}_spider.json", "w") as fp:
        json.dump(transform_spider, fp, indent=2)