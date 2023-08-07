# MBPP Dataset Transformation
* [Link](https://github.com/google-research/google-research/tree/master/mbpp) to MBPP GitHub

## Set Up
To create the `ic_mbpp.json` file, do the following:
1. Download the MBPP [dataset](https://github.com/google-research/google-research/blob/master/mbpp/mbpp.jsonl)
2. Run the below script with the local path to the MBPP dataset as an argument
```sh
python transform.py <Path to MBPP dataset>
```

## Dataset Description
The conversion script makes very minor adjustments to the original MBPP dataset to make it compatiable with InterCode's dataset format specifications. This includes:
* Rename `text` field to `query`
* Rename `code` field to `gold`
* Aggrgate `test_list` and `challenge_test_list` fields into a single `tests` field

In summary, the InterCode version of the MBPP dataset includes the following fields for each task instance: [`query`, `gold`, `tests`, `task_id`, `test_setup_code`]