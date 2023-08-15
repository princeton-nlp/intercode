import argparse, json, os, re, sys

LIMIT_TABLES = 50

TYPE_MAP = {
    "integer": "int",
    "text": "text",
    "real": "double",
}

TYPE_PROCESSING = {
    "int": lambda x: int(re.sub(r'[^0-9]', '', str(x))),
    "double": lambda x: float(re.sub(r'[^0-9\.]', '', str(x))),
    "text": lambda x: x
}

def generate_tables(path_wikisql, split):
    ID_TO_TABLE = {}
    TABLE_TO_COLS = {}

    with open(f"ic_wikisql_{split}.sql", "w") as f:
        # Create test user
        f.write("CREATE USER 'admin'@'%' IDENTIFIED BY 'admin';\n" + \
            "GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%';\n" + \
            "FLUSH PRIVILEGES;\n\n")
        
        # Create db
        f.write(f"CREATE DATABASE IF NOT EXISTS `{split}`;\nUSE `{split}`;\n\n")
        
        with open(os.path.join(path_wikisql, f"{split}.tables.jsonl"), 'r') as f_tables:
            for line in f_tables.readlines()[:LIMIT_TABLES]:
                table = json.loads(line)
                
                table_name = f"table_{table['id'].replace('-', '_')}"
                ID_TO_TABLE[table['id']] = table_name
                TABLE_TO_COLS[table_name] = []
                
                f.write(f"DROP TABLE IF EXISTS `{table_name}`;\nCREATE TABLE `{table_name}` (\n")
                f.write(f"\t`id_fake` int NOT NULL AUTO_INCREMENT,\n")

                empty_cols_idx = 0
                for col_name, data_type in zip(table['header'], table['types']):
                    col_name = col_name.replace(" ", "_")[:64]
                    if col_name == "#":
                        col_name == "number"
                    # col_name = re.sub(r'[^a-zA-Z0-9_]', '_', col_name)
                    # col_name = re.sub(r'__+', '_', col_name).strip('_')[:64]
                    if len(col_name) == 0:
                        col_name = f"empty_col_{empty_cols_idx}"
                        empty_cols_idx += 1
                    data_type = TYPE_MAP[data_type]
                    f.write(f"\t`{col_name}` {data_type} DEFAULT NULL,\n")
                    TABLE_TO_COLS[table_name].append((col_name, data_type))
                f.write(f"\tPRIMARY KEY (`id_fake`)\n")
                f.write(f") ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;\n\n")
                
                f.write(f"LOCK TABLES `{table_name}` WRITE;\n")
                f.write(f"INSERT INTO `{table_name}` VALUES ")
                for idx, row in enumerate(table['rows']):
                    row = [TYPE_PROCESSING[data_type](elem) for elem, (_, data_type) in zip(row, TABLE_TO_COLS[table_name])]
                    row = f"({idx+1}, {str(row)[1:-1]})".encode('ascii', "ignore").decode()
                    f.write(row)
                    if idx < len(table['rows']) - 1:
                        f.write(",")
                f.write(";\nUNLOCK TABLES;\n\n")
    
    return ID_TO_TABLE, TABLE_TO_COLS


def generate_dataset(path_wikisql, split, ID_TO_TABLE, TABLE_TO_COLS):
    tasks_ic = []
    with open(os.path.join(path_wikisql, f"{split}.jsonl"), 'r') as f:
        for line in f.readlines():
            task_wsql = json.loads(line)
            if task_wsql['table_id'] not in ID_TO_TABLE:
                continue
            task_sql = task_wsql['sql']
            
            gold_obj = Query(task_sql['sel'], task_sql['agg'], conditions=task_sql['conds'])

            table_name = ID_TO_TABLE[task_wsql['table_id']]
            gold_list = str(gold_obj).split()
            gold_clean = []
            for elem in gold_list:
                if elem == "table":
                    gold_clean.append(table_name)
                elif re.match(r'^col(\d+)$', elem):
                    gold_clean.append(TABLE_TO_COLS[table_name][int(elem[3:])][0])
                else:
                    gold_clean.append(elem)
            gold_clean = ' '.join(gold_clean)

            tasks_ic.append({
                'db': split,
                'query': f"{task_wsql['question']} (Use table {table_name})",
                'gold': gold_clean
            })

    with open(f"ic_wikisql_{split}.json", 'w') as f:
        json.dump(tasks_ic, fp=f)


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument("path_wikisql", type=str, help="Path to WikiSQL dataset")
    parser.add_argument("path_wikirepo", type=str, help="Path to WikiSQL repo")
    parser.add_argument("--split", default="dev", type=str, help="Split to generate tables for [dev, train, test]")
    args = parser.parse_args()

    ID_TO_TABLE, TABLE_TO_COLS = generate_tables(args.path_wikisql, args.split)

    sys.path.append(args.path_wikirepo)
    from lib.query import Query

    generate_dataset(args.path_wikisql, args.split, ID_TO_TABLE, TABLE_TO_COLS)

