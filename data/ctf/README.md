# InterCode-CTF Dataset
For a comprehensive description of InterCode-CTF, please refer to the workshop paper we wrote that discusses the motivation behind this environment, the formulation of Capture the Flag as an interactive coding task, the collection procedure, and some initial experiments evaluating existing SOTA LMs on this dataset:

**[Language Agents as Hackers: Evaluating Cybersecurity Skills with Capture the Flag](https://john-b-yang.github.io/static/misc/preprint_InterCode_CTF.pdf)**   
[John Yang](https://john-b-yang.github.io/), [Akshara Prabhakar](https://aksh555.github.io/), [Shunyu Yao](https://ysymyth.github.io/), [Kexin Pei](https://sites.google.com/site/kexinpeisite/), [Karthik Narasimhan](https://www.cs.princeton.edu/~karthikn/)

## Task Description
Task instances were manually collected from the [picoCTF](https://play.picoctf.org/practice) platform.
Each task instance has three components:
* `query`: Natural language instruction
* `gold`: The correct flag
* `task_assets/{task_id}`: Digital assets (e.g., code, images, executables) necessary for task completion

**Initialization.** At the beginning of each task episode, a task worker is given the `query` as the first observation.
The task worker must then interact with a Bash shell within an Ubuntu OS to solve the task.
Each task episode also places the task worker within a task instance-specific (`task_assets/{task_id}`) folder of the shell.

**Task Completion.** The task worker can then write Python and Bash commands to navigate the shell, investigate the given digital assets, and attempt to find the flag.
If it finds a flag, formatted as `picoCTF{...}` it must then run `submit picoCTF{...}` as an action. If the submitted value matches the `gold` flag, task completion is successful.

## Dataset
The `ic_ctf.json` file contains the following fields: `{task_id, query, gold, source, tags}`.
* `query` and `gold` contains the aforementioned information
* `task_id` is a unique identifier connecting the instance with the associated assets in `task_assets/`
* `source` is a URL to the original problem found on `picoCTF`
* `tags` is a list of the categories associated with the task instance