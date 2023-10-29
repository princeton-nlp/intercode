# Bash Call
python -m experiments.eval_react \
    --data_path ./data/nl2bash/nl2bash_fs_1.json \
    --env bash \
    --image_name intercode-nl2bash \
    --log_dir logs/experiments \
    --max_turns 10
    # --verbose

# SQL Call
# python -m experiments.eval_react \
#     --data_path ./data/sql/spider/ic_spider_dev.json \
#     --env sql \
#     --image_name docker-env-sql \
#     --log_dir logs/experiments \
#     --max_turns 10 \
#     --verbose