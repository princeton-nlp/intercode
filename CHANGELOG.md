# Changelog

All notable changes to this project will be documented in this file.

## [1.0.2] - 10/19/2023

* The InterCode [webpage](https://intercode-benchmark.github.io/) has been modified to be a leaderboard style 🏆.
* If you evaluate on InterCode and would like to put your results on the leaderboard, please create an issue or email John directly 📧.
* We wrote a standalone [report](https://john-b-yang.github.io/static/misc/preprint_InterCode_CTF.pdf) describing the operational **InterCode-CTF** 🚩 environment, a dataset of **100** task instances, and our initial experiments. 
* 🚨 New Environment! The recently released [SWE-bench](https://swe-bench.github.io/) benchmark introduces *software engineering* as a task. To support agent-based approaches, we have released the **IC-SWE-bench** environment, which presents the SWE-bench task in an interactive setting!

✍🏻 John 

## [1.0.1] - 8/15/2023

Since its initial release, I am pleased to announce that InterCode has been extended to support a number of new languages and datasets. They are summarized as follows:

* New Supported Datasets:
    * SQL: [WikiSQL](https://github.com/princeton-nlp/intercode/tree/master/data/sql/wikisql), [BIRD-SQL](https://github.com/princeton-nlp/intercode/tree/master/data/sql/bird)
    * Python: [APPS](https://github.com/princeton-nlp/intercode/tree/master/data/python/apps), [MBPP](https://github.com/princeton-nlp/intercode/tree/master/data/python/mbpp)
* Python Support:
    * Interpreter-Style [Environment](https://github.com/princeton-nlp/intercode/blob/master/intercode/envs/python/python_env.py) + [Dockerfile](https://github.com/princeton-nlp/intercode/blob/master/docker/python.Dockerfile)
    * Single Turn + Try Again results on Python Environment + MBPP will be uploaded soon to the `data/results` folder
    * Try it out with `python run_demo.py python`
* CTF Environment:
    * `ctf_env.py` has been rewritten to:
        * Depend a single Dockerfile for multiple task instances
        * Uses the `InterCodeEnv` abstraction such that it is implemented in just 30 lines
    * CTF environment has been integrated into the `run_demo.py` script. Try it out with `python run_demo.py ctf`
    * The CTF dataset will continually we increased in quantity as we source and create more problems.

✍🏻 John 

## [1.0.0] - 7/11/2023

Introducing the initial release of InterCode, a lightweight, flexible, and easy-to-use framework for designing interactive code environments. Please view the `README.md` and wiki pages for information on how to build and use InterCode.