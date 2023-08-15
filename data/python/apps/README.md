# APPS Dataset Transsformation
* [Link](https://github.com/hendrycks/apps) to APPS GitHub
* [Link](https://drive.google.com/drive/folders/1iquZDwvcvJoaPnmhwYr8zu58rzmEpF9T?usp=sharing) to `ic_apps.json` data file
    * Not included in the repository due to size (1.09 GB)
    * The `ic_apps.json` folder in this file is a 100 example subset

## Set Up
To recreate the `ic_apps.json` file, do the following:
1. Download the APPS [dataset](https://people.eecs.berkeley.edu/~hendrycks/APPS.tar.gz) and unzip it.
2. Run the below script with the local path to the APPS dataset as an argument
```sh
python transform.py <Path to APPS dataset>
```

## Dataset Description
From the directory-based layout of the APPS dataset, where 1. each task instance is denoted by a directory path (i.e. `train/0024`) and 2. each directory contains some or all of the following files: `question.txt`, `input_output.json`, `metadata.json`, `solutions.json`, the `transform.py` conversion script makes the following adjustments and compiles the dataset into a single, InterCode-compatiable `.json` file.:
* Does not consider `train` task instances
* Does not consider `test` task instances that do not have all three `question.txt` (query), `solutions.json` (gold), and `input_output.json` (execution based testing) files.
    * This cuts down the original 5000 `test` task instances to 3765 usable instances.
* Save `question.txt` &#8594; `query` field
* Save `input_output.json` &#8594; `input_output` field
* Randomly samples a single solution from `solutions.json` (seed=24) &#8594; `gold` field

## Usage
* Environment: InterCode Python