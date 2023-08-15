import argparse
import json, math, os, sqlite3
import pandas as pd


SELECTED_DBS = ["debit_card_specializing", "superhero", "toxicology"]
TYPE_MAP = {
    "integer": "int",
    "text": "text",
    "real": "double",
    "datetime": "datetime",
    "date": "date"
}


def save_task_data(path_bird):
    """Save task data in an InterCode compatible format"""
    # Load dev dataset
    path_dev = os.path.join(path_bird, "dev.json")
    with open(path_dev, 'r') as f:
        data_dev = json.load(f)
    path_gold = os.path.join(path_bird, "dev_gold.sql")
    with open(path_gold, 'r') as f:
        data_gold = []
        for line in f.readlines():
            data_gold.append(line)
    assert(len(data_dev) == len(data_gold))

    # Convert to InterCode format
    for idx, task in enumerate(data_dev):
        task['query'] = task['question']
        del task['question']
        task['db'] = task['db_id']
        del task['db_id']
        task['gold'] = data_gold[idx].split("\t")[0]
    
    # Filter out databases that are not in the selected databases
    filtered = [x for x in data_dev if any([x['db'] == db for db in SELECTED_DBS])]
    with open("ic_bird.json", 'w') as f:
        json.dump(filtered, fp=f)


def get_map_db_to_tables(path_bird):
    """Get tables for each database"""
    map_db_to_tables = {}
    for subdir, dirs, files in os.walk(path_bird):
        # Skip non-selected databases
        if not any([x in subdir for x in SELECTED_DBS]):
            continue
        for file in files:
            file_path = os.path.join(subdir, file)
            if not file_path.endswith(".csv"):
                continue
            # Add table to database mapping
            path_parts = file_path.split("/")
            db, table_name = path_parts[-3], path_parts[-1][:-4]
            if db not in map_db_to_tables:
                map_db_to_tables[db] = []
            map_db_to_tables[db].append(table_name)
    return map_db_to_tables


def save_database_file(path_bird, map_db_to_tables):
    # Create MySQL-compatible .sql file for each db
    with open(f"ic_bird_dbs.sql", "w") as f:
        # Create test user
        f.write("CREATE USER 'admin'@'%' IDENTIFIED BY 'admin';\n" + \
            "GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%';\n" + \
            "FLUSH PRIVILEGES;\n\n")
        
        for db, tables in map_db_to_tables.items():
            path_sqllite = os.path.join(path_bird, "dev_databases", db, f"{db}.sqlite")
            conn = sqlite3.connect(path_sqllite)
            cursor = conn.cursor()
            
            # Create db
            f.write(f"CREATE DATABASE IF NOT EXISTS `{db}`;\nUSE `{db}`;\n\n")
            
            # Create each table
            for table in tables:
                # Command: Create table
                f.write(f"DROP TABLE IF EXISTS `{table}`;\nCREATE TABLE `{table}` (\n")
                path_table_desc = os.path.join(path_bird, "dev_databases", db, "database_description", f"{table}.csv")
                data_table_desc = pd.read_csv(path_table_desc)
                
                cols_to_keep = ['original_column_name', 'data_format']
                data_table_desc = data_table_desc[cols_to_keep]

                f.write(f"\t`id_fake` int NOT NULL AUTO_INCREMENT,\n")
                for _, row in data_table_desc.iterrows():
                    col_name = row['original_column_name'].replace(" ", "_")
                    data_format = row['data_format'] if 'data_format' in row else "text"
                    data_format = TYPE_MAP[data_format.strip()]
                    f.write(f"\t`{col_name}` {data_format} DEFAULT NULL,\n")
                f.write(f"\tPRIMARY KEY (`id_fake`)\n")
                f.write(f") ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;\n\n")

                # Command: insert values into table
                f.write(f"LOCK TABLES `{table}` WRITE;\n")
                f.write(f"INSERT INTO `{table}` VALUES ")
                cursor.execute(f"SELECT * FROM {table}")
                rows = cursor.fetchall()
                rows = [str((idx+1,) + row).replace('None', 'NULL') for idx, row in enumerate(rows)]
                f.write(",".join(rows) + ";\n")
                f.write("UNLOCK TABLES;\n\n")


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument("path_bird", type=str, help="Path to bird dataset")
    args = parser.parse_args()

    save_task_data(args.path_bird)
    map_db_to_tables = get_map_db_to_tables(args.path_bird)
    save_database_file(args.path_bird, map_db_to_tables)
