# 🤖💻 InterCode
Build interactive code environments for training, testing, and augmenting code and decision making agents

<p>
    <a href="https://badge.fury.io/py/intercode-bench">
        <img src="https://badge.fury.io/py/intercode-bench.svg">
    </a>
    <a href="https://www.python.org/">
        <img alt="Build" src="https://img.shields.io/badge/Python-3.8+-1f425f.svg?color=purple">
    </a>
    <a href="https://copyright.princeton.edu/policy">
        <img alt="License" src="https://img.shields.io/badge/License-MIT-blue">
    </a>
</p>

## 👋 Overview
InterCode is a **lightweight, flexible, and easy-to-use framework** for designing interactive code environments. Following the popular [`gym`](https://gymnasium.farama.org/) interface definition, InterCode makes it easy to quickly define a code environment and deploy an agent to operate in code within the context of the environment.

For an overview of InterCode, building interactive code tasks with InterCode, and evaluating agents on InterCode environments, please check out our [wiki](https://github.com/princeton-nlp/intercode/wiki), [website](https://intercode-benchmark.github.io/), and the original paper:

**[InterCode: Standardizing and Benchmarking Interactive Coding with Execution Feedback](https://arxiv.org/abs/2306.14898)**    
[John Yang*](https://john-b-yang.github.io/), [Akshara Prabhakar*](https://aksh555.github.io/), [Karthik Narasimhan](https://www.cs.princeton.edu/~karthikn/), [Shunyu Yao](https://ysymyth.github.io/)

<img src="assets/preview.png">

## 🚀 Quick Start
You can install InterCode as a PyPI package or by building from source.

> **Note**
> InterCode requires the following installations to run:
> * `python` >= 3.8
> * `docker`: Learn more [here](https://docs.docker.com/get-docker/) to install.

### 🐍 PyPI Package
1. Install the ([pypi package](https://pypi.org/project/intercode-bench/)):
```bash
pip install intercode-bench
```
2. Copy + Paste the following code for interacting with the InterCode Bash environment into a python file (i.e. `run_bash.py`)
```python
from intercode.assets import bash_build_docker, bash_image_name, bash_test_data
from intercode.envs import BashEnv

if __name__ == '__main__':
    bash_build_docker()
    env = BashEnv(bash_image_name, data_path=bash_test_data, traj_dir="logs/", verbose=True)

    try:
        for idx in range(3):
            env.reset()
            obs, done = env.observation, False
            while not done:
                action = input('> ')
                obs, reward, done, info = env.step(action)
    except KeyboardInterrupt:
        print("Keyboard interrupt detected")
    finally:
        env.close()
```
3. Run the file (i.e. `python run_bash.py`)

If InterCode was installed successfully, the InterCode Bash environment should be started successfully and a CLI interpreter should appear, allowing you to enter `bash` commands
to interact with the task setting. Similar starter code for the InterCode SQL environment is available on the PyPI [page](https://pypi.org/project/intercode-bench/).

### 💽 Build from Source
1. Clone this repository, create a virtual environment, and install necessary dependencies
```bash
git clone https://github.com/princeton-nlp/intercode.git
cd intercode
conda env create -f environment.yml
conda activate intercode
```
2. Run `setup.sh` to create the docker images for the InterCode Bash, SQL, and CTF environments
3. Run `python run_sql.py` 

If InterCode was installed successfully, the InterCode SQL environment should be started successfully and a CLI interpreter should appear, allowing you to enter `SQL` commands
to interact with the task environment. You can also run `run_bash.py` and `run_ctf.py` to explore the Bash and CTF task environments.

## 🔎 Learn More
If you'd like to...
* Get a more in depth, but still brief overview of InterCode, see [here](https://github.com/princeton-nlp/intercode/wiki/1.-Environment-%F0%9F%97%BA%EF%B8%8F)
* Access the InterCode Bash and SQL environments, see [here](https://github.com/princeton-nlp/intercode/wiki/2.-Usage-%F0%9F%8E%AE)
* Build an interactive code task with InterCode, see [here](https://github.com/princeton-nlp/intercode/wiki/3.-Interface--%F0%9F%9B%A0%EF%B8%8F)
* Run language and code agents on InterCode based environments, see [here](https://github.com/princeton-nlp/intercode/wiki/4.-Experiments-%F0%9F%A7%AA)

Not seeing what you want? Please feel free to check the [wiki](https://github.com/princeton-nlp/intercode/wiki) and [paper](https://arxiv.org/abs/2306.14898) for more details, or raise an issue if you still can't find it.

## 💫 Contributions
We would love to hear from the broader NLP and Machine Learning community, and we welcome any contributions, pull requests, or issues! To do so, please either file a new pull request or issue and fill in the corresponding templates accordingly. We'll be sure to follow up shortly!

Contact person: [John Yang](https://john-b-yang.github.io/)

## ✍️ Citation
If you find this repository helpful, feel free to cite our [publication](https://arxiv.org/abs/2306.14898)
```
@inproceedings{yang2023intercode,
  title = {InterCode: Standardizing and Benchmarking Interactive Coding with Execution Feedback},
  author = {Yang, John and Prabhakar, Akshara and Narasimhan, Karthik and Yao, Shunyu},
  booktitle = {ArXiv},
  year = {2023},
  html = {https://arxiv.org/abs/2207.01206}
}
```

## 🪪 License
Check `LICENSE.md`