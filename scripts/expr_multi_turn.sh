# !bin/bash

# Data Paths
# - (SQL)  ./data/spider/dev_spider.json
# - (SQL)  ./data/test/sql_queries.csv
# - (Bash) ./data/nl2bash/nl2bash.json
# - (Bash) ./data/test/bash_queries.json
# - (Bash) ./data/test/nl2cmd.json

# Environments
# - sql, bash

# Image Names
# - (SQL)  docker-env-sql
# - (Bash) intercode-bash
# - (Bash) intercode-nl2bash
# - (Py)   intercode-python

# Policies
# - chat

# Bash Call
# python -m experiments.eval_n_turn \
#     --data_path ./data/nl2bash/nl2bash_fs_1.json \
#     --dialogue_limit 7 \
#     --env bash \
#     --image_name intercode-nl2bash \
#     --log_dir logs/experiments \
#     --max_turns 10 \
#     --policy chat \
#     --template v2 \
#     --verbose

# SQL Call
python -m experiments.eval_n_turn \
    --data_path ./data/spider/dev_spider.json \
    --dialogue_limit 5 \
    --env sql \
    --image_name docker-env-sql \
    --log_dir logs/experiments \
    --max_turns 10 \
    --policy chat \
    --template game_sql \
    --model gpt-3.5-turbo
    # --handicap 
    # --verbose 