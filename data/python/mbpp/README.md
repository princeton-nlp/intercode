# MBPP Dataset Transformation
* [Link](https://github.com/google-research/google-research/tree/master/mbpp) to MBPP GitHub

## Set Up
To recreate the `ic_mbpp.json` file, do the following:
1. Download the MBPP [dataset](https://github.com/google-research/google-research/blob/master/mbpp/mbpp.jsonl)
2. Run the below script with the local path to the MBPP dataset as an argument
```sh
python transform.py <Path to MBPP dataset>
```

## Dataset Description
The conversion script makes very minor adjustments to the original MBPP dataset to make it compatiable with InterCode's dataset format specifications. This includes:
* Rename `text` field to `query`
* Rename `code` field to `gold`
* Aggregate `test_list` and `challenge_test_list` fields into a single `tests` field

In summary, the InterCode version of the MBPP dataset includes the following fields for each task instance: [`query`, `gold`, `tests`, `task_id`, `test_setup_code`]

## Usage
* Environment: InterCode Python
* Submit Action: `submit <function name>`
* Reward Calculation Procedure:
    1. Evaluate submitted function
        * Apply `test_setup_code`
        * Iterate through `tests`
            * Log each test case execution output
    2. Evauluate gold function
        * Reset Python environment
        * Apply `test_setup_code`
        * Iterate through `tests`
            * Log each test case execution output
    3. Compute IoU of test case execution outputs