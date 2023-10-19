# SWE-bench Dataset Transformation
* [Link](https://swe-bench.github.io/) to SWE-bench website

### Set Up
To recreate the `ic_swe_bench.json` file, do the following:
1. Download the SWE-bench [dataset](https://drive.google.com/uc?export=download&id=164g55i3_B78F6EphCZGtgSrd2GneFyRM)
2. Run the below script with the local path to the SWE-bench dataset as an argument
```sh
python transform.py <Path to SWE-bench dataset>
```

## Dataset Description
The conversion script makes very minor adjustments to the original SWE-bench dataset to make it compatible with InterCode's dataset format specifictions. This includes:
* Rename `problem_statement` field to `query`
* Rename `instance_id` field to `task_id`
* Retain `base_commit` and `repo` fields for checking out instance-specific code
* Retain `version` and `environment_setup_commit` for checking out 
* Retain `test_patch`, `FAIL_TO_PASS`, and `PASS_TO_PASS` fields for reward calculation

## Usage
* Environment: InterCode SWE-bench