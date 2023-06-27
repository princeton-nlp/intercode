import json, os, pytest

from intercode.utils import IntercodeDataLoader

def test_validate_file_path():
    data_path = "./data/test/bash_queries.json"
    data_loader = IntercodeDataLoader(data_path)
    assert(data_loader._validate_file_path(data_path) == None)

    with pytest.raises(OSError):
        data_path = "./data/non_existent_path.csv"
        data_loader._validate_file_path(data_path)

    wrong_type = 'wrong_file_type.png'
    open(wrong_type, 'x')
    with pytest.raises(ValueError):
        data_loader._validate_file_path(wrong_type)
    os.remove(wrong_type)

def test_get():
    data_path = "./data/test/sql_queries.csv"
    data_loader = IntercodeDataLoader(data_path)
    record = data_loader.get()
    assert(list(record.keys()) == ["query", "gold", "extra"])

    record = data_loader.get(0)
    assert(record["query"] == "Find the first name of students who have both cat and dog pets .")
    assert(record["gold"].startswith("select t1.fname from Student as t1 join  Has_Pet as t2 on t1.stuid"))
    assert(record["extra"]["db"] == "pets_1")

    data_path = "./data/test/bash_queries.json"
    data_loader = IntercodeDataLoader(data_path)
    record = data_loader.get()
    assert(list(record.keys()) == ["query", "gold"])

def test_load_data():
    data_path = "./data/test/sql_queries.csv"
    data_loader = IntercodeDataLoader(data_path)
    assert(data_loader._load_data().shape == (23, 3))

    wrong_keys_test = [{"task": "should be query", "command": "should be gold"}]
    data_loader.data_path = 'wrong_keys_test.json'
    with open(data_loader.data_path, 'w') as fp:
        json.dump(wrong_keys_test, fp)
    with pytest.raises(ValueError):
        data_loader._load_data()
    os.remove(data_loader.data_path)
    
