# Bash Call
python -m experiments.eval_plan_solve \
    --data_path ./data/bash/nl2bash/nl2bash_fs_1.json \
    --env bash \
    --image_name intercode-nl2bash \
    --log_dir logs/experiments \
    --refine \
    --refine_turns 3
    # --verbose 

# SQL Call
# * Include --refine and --refine_turns for plan & solve + refine
# * Include --proportion and --seed to randomize order of task instances
# python -m experiments.eval_plan_solve \
#     --data_path ./data/sql/spider/dev_spider.json \
#     --env sql \
#     --image_name docker-env-sql \
#     --log_dir logs/experiments \
#     --proportion 0.05 \
#     --refine \
#     --refine_turns 3 \
#     --seed 32 \
#     --verbose 