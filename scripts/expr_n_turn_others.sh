python -m experiments.eval_n_turn_others \
    --data_path ./data/spider/dev_spider.json \
    --dialogue_limit 5 \
    --env sql \
    --image_name docker-env-sql \
    --log_dir logs/experiments \
    --max_turns 10 \
    --policy chat \
    --template v4