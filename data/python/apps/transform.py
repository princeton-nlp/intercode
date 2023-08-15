import argparse, json, os, random

DEMO = False

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('path', type=str, help='Path to MBPP dataset folder')
    args = parser.parse_args()

    random.seed(24)

    # Create map of question -> query, gold, input_output, meta
    question_map = {}
    for subdir, dirs, files in os.walk(args.path):
        for file in files:
            file_path = os.path.join(subdir, file)
            if any([x in file_path for x in ["README", "train/"]]):
                continue
            problem = subdir.split("/")[-1]
            if problem not in question_map:
                question_map[problem] = {}
            with open(file_path, 'r') as f:
                if file == "question.txt":
                    question_map[problem]["query"] = f.read()
                if file == "solutions.json":
                    question_map[problem]["gold"] = random.choice(json.load(f))
                if file == "input_output.json":
                    question_map[problem]["input_output"] = json.load(f)
                if file == "metadata.json":
                    question_map[problem]["meta"] = json.load(f)
    
    # Filter out questions that don't have all required fields
    dataset_apps = [
        v for v in question_map.values()
        if all([x in v for x in ['query', 'gold', 'input_output']])
    ]

    if DEMO:
        dataset_apps = dataset_apps[:100]

    # Save filtered questions
    with open('ic_apps.json', 'w') as f:
        json.dump(dataset_apps, fp=f)
