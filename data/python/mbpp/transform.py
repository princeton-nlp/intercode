import argparse
import json

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('path_mbpp', type=str, help='Path to MBPP dataset (.json file)')
    args = parser.parse_args()

    dataset_mbpp = []
    with open(args.path_mbpp, 'r') as f:
        for line in f.readlines():
            task = json.loads(line)
            dataset_mbpp.append({
                "query": task['text'],
                "gold": task['code'],
                "tests": task['test_list'] + task['challenge_test_list'],
                "task_id": task['task_id'],
                "test_setup_code": task['test_setup_code']
            })
    
    with open('ic_mbpp.json', 'w') as f:
        json.dump(dataset_mbpp, fp=f)