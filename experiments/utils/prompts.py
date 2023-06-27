DEMO_SQL_REACT = """Question: What are the names and grades for each high schooler?
Thought 1: I should write a SQL command that selects the name and grade fields from a table about high schoolers.
Action 1: execute[SELECT name, grade FROM high_schoolers]
Observation 1: Error executing query: Table 'network_1.high_schoolers' doesn't exist
Thought 2: The high_schoolers table doesn't exist, I need to check what tables are available to use.
Action 2: execute[SHOW TABLES]
Observation 2: [('friend',), ('highschooler',), ('likes',)]
Thought 3: There is a table called `highschoolers`. I should check what information this table contains.
Action 3: execute[DESC highschooler]
Observation 3: [('ID', 'int', 'NO', 'PRI', None, 'auto_increment'), ('name', 'text', 'YES', '', None, ''), 
('grade', 'int', 'YES', '', None, '')]
Thought 4: The highschooler table contains the name and grade columns. I can now write a SQL command that answers
the question
Action 4: execute[SELECT name, grade FROM highschooler]
Observation 4: [('John', 12), ('Haley', 10), ('Alexis', 11), ('Jordan', 12), ('Austin', 11), ('Tiffany', 9), 
('Kris', 10), ('Jessica', 11), ('Jordan', 9), ('Brittany', 10), ('Logan', 12), ('Gabriel', 9), ('Cassandra', 9), 
('Andrew', 10), ('Gabriel', 11), ('Kyle', 12)]
Thought 5: The output contains the name and grade for each high schooler, answering the question. I can submit
this as the answer.
Action 5: submit
Question: What are the names of the contestants whose names are not 'Jessie Alloway'
Thought 1: I should write a SQL query that gets the name field from contestants and exclude the name
of 'Jessie Alloway'
Action 1: execute[SELECT name FROM contestants WHERE name != 'Jessie Alloway']
Observation 1: Error executing query: Unknown column 'name' in 'field list'
Thought 2: It looks like there is a table called `contestants`, but it doesn't have a name column. I need to
find out what columns are available.
Action 2: execute[DESCRIBE contestants]
Observation 2: [('contestant_number', 'int', 'NO', 'PRI', None, 'auto_increment'), ('contestant_name', 
'varchar(50)', 'NO', '', None, '')]
Thought 3: The available columns for the `contestant` table are `contestant_number` and `contestant_name`.
I can now write a SQL query.
Action 3: execute[SELECT contestant_name FROM contestants WHERE contestant_name != 'Jessie Alloway']
Observation 3: [('Edwina Burnam',), ('Tabatha Gehling',), ('Kelly Clauss',), ('Alana Bregman',), ('Jessie 
Eichman',), ('Allie Rogalski',), ('Nita Coster',), ('Kurt Walser',), ('Ericka Dieter',), ('Loraine NygrenTania 
Mattioli',)]
Thought 4: The SQL query worked, and the output shows all the contestant's names, but does not include
'Jessie Alloway'. I am finished with this query.
Action 4: submit
Question: What is the last transcript release date?
Thought 1: I should write a SQL query that 
Action 1: execute[SELECT MAX(release_date) AS last_transcript_release_date FROM transcripts]
Observation 1: Error executing query: Unknown column 'release_date' in 'field list'
Thought 2: A `transcripts` table exists, but it doesn't have the `release_date` column I came up with. I should find
out what columns are available.
Action 2: execute[DESC transcripts]
Observation 2: [('transcript_id', 'int', 'NO', 'PRI', None, 'auto_increment'), ('transcript_date', 'datetime', 
'YES', '', None, ''), ('other_details', 'varchar(255)', 'YES', '', None, '')]
Thought 3: Looks like there is a `transcript_date` column. I can try replacing `release_date` in my original SQL
query with this field.
Action 3: execute[SELECT MAX(transcript_date) AS last_transcript_release_date FROM transcripts]
Observation 3: [(datetime.datetime(2013, 6, 30, 13, 1, 40),)]
Thought 4: I get the largest `transcript_date`, which should be the latest transcript release. I am done.
Action 4: submit
Question: What is the total population and average area of countries in the continent of North America whose area is 
bigger than 3000 ?
Thought 1: I can use the SUM and AVG functions to get the total population and average area values for North America
where area is larger than 3000.
Action 1: execute[SELECT SUM(population) AS total_population, AVG(area) AS avg_area FROM countries WHERE continent 
= 'North America' AND area > 3000]
Observation 1: Error executing query: Table 'world_1.countries' doesn't exist
Thought 2: The `countries` table I used in the SQL query does not exist. I should check what tables exist.
Action 2: execute[It seems like the table 'countries' does not exist in the database. Can you please confirm if you
have access to a table with this name? If not, can you provide me with the name of the table that contains the 
required data?]
Observation 2: Error executing query: Your last `execute` action did not contain SQL code
Thought 3: I should not be asking questions as an action. Since I am interacting with a MySQL database, I should use
a SQL query to answer my question.
Action 3: execute[SHOW TABLES]
Observation 3: [('city',), ('country',), ('countrylanguage',)]
Thought 4: There are three tables. I can try writing a query using the `country` table since the question is asking
about countries.
Action 4: execute[SELECT SUM(population), AVG(surfacearea) FROM country WHERE continent = 'North America' AND 
surfacearea > 3000]
Observation 4: [(Decimal('480753000'), 1344763.722222)]
Thought 5: The query executed successfully, and I get two numbers, one for total population and another for average area.
I use the `WHERE` command to filter for continents in North America with a surface area greater than 3000. This answer
should be correct.
Action 5: submit
Question: Return the number of likes that the high schooler named Kyle has.
Thought 1: I should first find out what tables are available in this MySQL database that can help me answer this question
Action 1: execute[SHOW TABLES]
Observation 1: [('friend',), ('highschooler',), ('likes',)]
Thought 2: I should check if the friend table might have any information related to likes or the names of high schoolers
Action 2: execute[DESC friend]
Observation 2: [('student_id', 'int', 'NO', 'PRI', None, ''), ('friend_id', 'int', 'NO', 'PRI', None, '')]
Thought 3: Looks like there are two IDs. I should check if the highschooler table has a name associated with an ID
Action 3: execute[DESC highschooler]
Observation 3: [('ID', 'int', 'NO', 'PRI', None, 'auto_increment'), ('name', 'text', 'YES', '', None, ''), 
('grade', 'int', 'YES', '', None, '')]
Thought 4: The name field of the highschooler table will likely be helpful, but I still don't see any information about likes.
I should check the likes table.
Action 4: execute[DESC likes]
Observation 4: [('student_id', 'int', 'NO', 'PRI', None, ''), ('liked_id', 'int', 'NO', 'PRI', None, '')]
Thought 5: The likes table has pairs of student ids and like ids. I should find out Kyle's student id
Action 5: execute[SELECT * FROM highschooler WHERE name = 'Kyle']
Observation 5: [(1934, 'Kyle', 12)]
Thought 6: Kyle's student id is 1934. I can now check how many rows in the likes table have a student_id value of 1934.
Action 6: execute[SELECT COUNT(*) FROM likes WHERE student_id = 1934]
Observation 6: [(1,)]
Thought 7: I get a single number that is the number of likes that the high schooler Kyle has. This should be the answer
Action 7: submit
"""

DEMO_BASH_REACT = """Question: Convert the first 16 characters in "/testbed/textfile7.txt" to a single hexadecimal value
Thought 1: I can use the `xxd` command to get a hexdump of the /textbed/textfile7.txt file
Action 1: execute[xxd -p -l 16 /testbed/textfile7.txt]
Observation 1: /bin/bash: line 1: xxd: command not found
Thought 2: Seems like xxd is not available. I can try to use `od` (octal dump) command to get a hexadecimal dump.
Action 2: execute[od -A n -t x1 -N 16 /testbed/textfile7.txt]
Observation 2:  54 65 78 74 20 66 69 6c 65 20 37 20 77 69 74 68
Thought 3: This command is showing the hexadecimal representation of the first 16 bytes, but it is not a single value.
I should try stitching together the values into one continuous string.
Action 3: execute[od -A n -t x1 -N 16 /testbed/textfile7.txt | awk '{$1=$1;print}' | tr -d ' ']
Observation 3: 546578742066696c6520372077697468
Thought 4: I've configured
Action 4: submit
Question: Calculate a list of duplicate md5 sum hashes for all the ".java" files in the /testbed directory
Thought 1: Find all files with the `.java` extension in `testbed/`, then calculate the md5hash, sort them,
filter out duplicates, and only pick the first line of the hash.
Action 1: execute[find /testbed -name "*.java" -type f -exec md5sum {} + | sort | uniq -d | cut -d' ' -f1]
Observation 1: 
Thought 2: Seems like this did not produce any results. I may have to use another command instead of cut
to pick out the hashes from the output string
Action 2: execute[find /testbed -name "*.java" -type f -exec md5sum {} + | sort | uniq -Dw 32]
Observation 2: f32a3a97638afeb2ee2a15cfe335ab72  /testbed/Hello.java
f32a3a97638afeb2ee2a15cfe335ab72  /testbed/Hello1.java
f32a3a97638afeb2ee2a15cfe335ab72  /testbed/dir1/AnotherHello.java
Thought 3: This shows the output hashes and they have the same values, indicating that these files are duplicates.
However, the file names are also shown, which are not needed.
Action 3: execute[find /testbed -name "*.java" -type f -exec md5sum {} + | sort | uniq -D -w 32 | cut -c 35-]
Observation 3: /testbed/Hello.java
/testbed/Hello1.java
/testbed/dir1/AnotherHello.java
Thought 4: This shows the file names exclusively, and no longer shows the hashes. It seems that the cut
command argument may not be the best choice for selecting file names.
Action 4: execute[find /testbed -name "*.java" -type f -exec md5sum {} + | sort | uniq -D -w 32 | awk '{print $2}']
Observation 4: /testbed/Hello.java
/testbed/Hello1.java
/testbed/dir1/AnotherHello.java
Thought 5: I use the awk command instead, but instead of printing out the hashes, it still prints out the file
names. I should select a different part of the output string instead of `$2`
Action 5: execute[find /testbed -name "*.java" -type f -exec md5sum {} + | sort | uniq -D -w 32 | awk '{print $1}']
Observation 5: f32a3a97638afeb2ee2a15cfe335ab72
f32a3a97638afeb2ee2a15cfe335ab72
f32a3a97638afeb2ee2a15cfe335ab72
Thought 6: This prints out identical hashes, and based on previous observations, I know that these are hashes of
duplicates `.java` files from the `testbed/` directory. This should be correct. I will submit.
Action 6: submit
Question: print disk usage in human readable format of files or folders in /workspace
Thought 1: The `du` command is useful for printing out disk usage of a specific directory. I can use this to
display this information for the `workspace` directory
Action 1: execute[du /workspace]
Observation 1: 48	/workspace/dir1
8	/workspace/dir2/mysql
24	/workspace/dir2
100	/workspace
Thought 2: The default `du` command gives storage in a non-human readble font. I can use the -h option
of the du command to print storage size with bytes.
Action 2: execute[du -h /workspace]
Observation 2: 48K	/workspace/dir1
8.0K	/workspace/dir2/mysql
24K	/workspace/dir2
100K	/workspace
Thought 3: This gives me storage information for every folder under the workspace directory, but
I only need the storage for just the `workspace/` directory. The `-s` option should help with this.
Action 3: execute[du -sh /workspace]
Observation 3: 100K	/workspace
Thought 4: This shows data usage in human readable format for the `workspace` directory. I am finished.
Action 4: submit
Question: Count all the lines of all php files in the /testbed directory recursively
Thought 1: I should find the paths to all php files in the testbed directory, then apply the word
count command to each path.
Action 1: execute[find /testbed -name "*.php" | xargs wc -l]
Observation 1:  1 /testbed/dir1/info.php
 1 /testbed/hello.php
 2 total
Thought 2: This shows me too much information, I only need the total number of lines. I should add up
the lines together and output a single number.
Action 2: execute[find /testbed -name "*.php" -exec wc -l {} + | awk '{total += $1} END{print total}']
Observation 2: 4
Thought 3: This total is wrong, it doesn't match the previous observation, where total is 2. I only
need to apply the word count command.
Action 3: execute[find /testbed -name "*.php" -type f -exec cat {} + | wc -l]
Observation 3: 2
Thought 4: The value is 2, which matches the initial observation that the total lines of php files in the
testbed directory is 2. I can submit.
Action 4: submit
Question: Create a hello.txt file in the /testbed directory and add the text "Hello world" to it.
Thought 1: I can first create a `hello.txt` file in the `testbed/` directory
Action 1: touch testbed/hello.txt
Observation 1:
Thought 2: I should check that the file was created successfully.
Action 2: ls testbed/
Observation 2: dir1/
dir2/
dir3/
hello.txt
files.txt
Thought 3: I can now add the "Hello world" text to the hello.txt file
Action 3: echo Hello world > hello.txt
Observation 3:
Thought 4: I should check that the text was written successfully to the hello.txt file.
Action 4: cat testbed/hello.txt
Observation 4: Hello world
Thought 5: The hello.txt file has been created successfully in the testbed/ directory, and it contains
the Hello World text. I can submit.
Action 5: submit
"""

DEMO_MAP_REACT = {"SQL": DEMO_SQL_REACT, "BASH": DEMO_BASH_REACT}

DEMO_SQL_PLAN = """Question: What are the names and grades for each high schooler?
Plan:
1. Check what tables are available for use.
2. Inspect each table to identify which has information about high schoolers.
3. Use the table to write a query that selects the name and grade fields for each high schooler.
Question: What are the names of the contestants whose names are not 'Jessie Alloway'
Plan: 
1. Check what tables are available to use.
2. Inspect each table to identify which has information about high schoolers.
3. Use the table to write a query that selects the name of each contestants except for Jessie Alloway.
Question: What is the last transcript release date?
Plan:
1. Check what tables are available for use.
2. Inspect which tables may have information about transcripts.
3. From the correct table, write a query that picks the latest transcript release date value.
"""

DEMO_BASH_PLAN = """Question: Create a hello.txt file in the /testbed directory and add the text "Hello world" to it.
Plan:
1. Check that the `testbed` directory exists.
2. If it does not exist, create the directory
3. Create the hello.txt file in the `testbed` directory
4. Write the text "Hello world" to inside the `hello.txt` file
Question: Calculate a list of duplicate md5 sum hashes for all the ".java" files in the /testbed directory
1. Check that the `testbed` directory exists
2. Look for all files with the `.java` extension in `testbed`
3. Genereate an md5 sum hash for all java files
4. Edit the command to only keep the md5 sum hash files that are duplicates
Question: Print disk usage in human readable format of files or folders in /workspace
Thought 1: The `du` command is useful for printing out disk usage of a specific directory. I can use this to
display this information for the `workspace` directory
1. Check that the `du` command is installed and available on this system.
2. Check the man docs for du to see what option is useful for generating human readable formats
3. Use the `du` command with the `workspace/` dircetory as the argument to get disk usage.
"""

DEMO_MAP_PLAN = {"SQL": DEMO_SQL_PLAN, "BASH": DEMO_BASH_PLAN}

class PromptTemplate():
    def __init__(self, language: str, setting: str):
        self.language = language.upper()
        self.setting = setting
    
    def get_init_msg(self):
        pass

    def get_query_msg(self, query):
        pass

    def get_obs_msg(self, observation, reward):
        pass
    
    def get_retry_msg(self):
        return f"""No {self.language} code was found in your last response.

Your response should be a {self.language} command. Format your {self.language} command as follows:

```{self.language}
Your {self.language} code here
```
"""

# completion
class TemplateV1(PromptTemplate):
    def __init__(self, language: str, setting: str):
        super().__init__(language, setting)
        self.message_history = ""

    def get_init_msg(self):
        return f"""## TASK DESCRIPTION
You are a {self.language} code generator helping me answer a question using {self.language}.
I will ask you a question, and your task is to interact with a Bourne Shell system using {self.language} commands to come up with the answer.

## RULES
1. Do NOT ask questions 
2. Do NOT provide any explanations
3. Try to maximize your reward to 1 by interacting with the system using {self.language} commands like ```sql
SHOW TABLES```.

## OUTPUT DESCRIPTION
Given your {self.language} command response, I will return the following:
Output: <string>
Reward: [0, 1]

The output is the standard output from executing your {self.language} command.
The reward is a decimal value between 0 and 1, which tells you how close your {self.language} command is to the correct answer. 
The closer the reward is to 1, the closer your {self.language} command is to the correct answer.

"""
    
    def get_query_msg(self, query):
        self.message_history = "\n" + "-"*10 + "\n" + \
            "Your previously tried incorrect actions along with their observations and rewards are:\n"
        return f"""Query: \"{query}\"
Enclose your response {self.language} command in ```{self.language}
```
Do NOT generate any output or reward.
"""
    
    def get_obs_msg(self, dialogue):
        action, observation, reward = dialogue["actions"], dialogue["observations"], dialogue["reward"]
        self.message_history += \
            f"- Action: {action}\n" + \
            f"- Output: {observation}\n" + \
            f"- Reward: {reward}\n\n"
        message = f"Analyze your previous actions and output a different {self.language} command to maximize your reward to 1\n" + self.message_history + "-"*10 + "\n" + \
        "Output something else."
        return message 
            
            
# PaLM chat
class TemplateV2(PromptTemplate):        
    def get_init_msg(self):
        self.explore_msg = f"""
Try ```sql
SHOW TABLES``` or ```sql
DESCRIBE <table_name> to learn more about the database```.

"""
        return f"""## TASK DESCRIPTION
You are a {self.language} code generator helping me answer a question using {self.language}. 
I will ask you a question, and your task is to interact with a {self.setting} system using {self.language} commands to come up with the answer. 

## RESPONSE FORMAT
Your response should be a {self.language} command. Format your {self.language} command as follows:
```{self.language}
Your {self.language} code here
```

DO NOT WRITE ANYTHING EXCEPT FOR CODE in your response.
{self.explore_msg}

## OUTPUT DESCRIPTION
Given your {self.language} command input, the system will then give back output formatted as follows:

Output: <string>
Reward: [0, 1]

The output is the standard output from executing your {self.language} command.
The reward is a decimal value between 0 and 1, which tells you how close your {self.language} command is to the correct answer. 
The closer the reward is to 1, the closer your {self.language} command is to the correct answer.

You have to try to maximize the reward.
"""
    
    def get_query_msg(self, query):
        self.query = query
        return f"""Query: \"{query}\".
Do not generate any output or reward.
"""
    
    def get_obs_msg(self, observation, reward):
        if isinstance(observation, str) and observation == "" or isinstance(observation, list) and len(observation) == 0:
            observation = "No output"
        return f"""{self.setting} Output: {observation}
Reward: {reward}
Here is the query again: \"{self.query}\"
Try something different to generate {self.language} command to get a reward of 1.
Do not generate any output or reward.
"""

class TemplateSQLGame(TemplateV2):
    def get_init_msg(self):
        return f"""`{self.language}Env` is a multi-turn game that tests your ability to write
a {self.language} command that produces an output corresponding to a natural language query.

## GAME DESCRIPTION
At the start of this game, you are given a natural language query describing some
desired output (i.e. "Find the first name of a student who have both cat and dog pets").
Aside from the natural language query, you have no information about the tables you have access to.

The game will be played in a series of turns. Each turn, you can submit a {self.language} command.
You will then get a response detailing the output of your {self.language} query along with a reward
that tells you how close your {self.language} command is to the correct answer.

The goal of this game is to write a {self.language} command that gets a reward of 1. The game will automatically
terminate once you get a reward of 1.

## INPUT DESCRIPTION
Each turn, you can submit a {self.language} command. Your {self.language} command should be formatted as follows:

```{self.language}
Your {self.language} code here
```

Your {self.language} command can help you do one of two things:
1. Learn more about the tables you have access to
2. Execute {self.language} commands based on these tables to generate the correct output.

## OUTPUT DESCRIPTION
Given your {self.language} command input, `{self.language}Env` will then give back output formatted as follows:

Output: <string>
Reward: <decimal value between 0 and 1>

The output is a string displaying the result from executing your {self.language} query.
The reward is a decimal value between 0 and 1.

## REWARD DESCRIPTION
The reward should be interpreted as a ratio. It tells you how many rows your {self.language}
command outputted correctly compared to the correct answer.

## RULES
1. Do NOT ask questions. Your commands are fed directly into a SQL compiler. 

## STRATEGY
You are free to play as many turns of the game as you'd like to inspect tables
and develop your {self.language} command.

The best strategy for this game is to first write {self.language} commands that help you learn
about the tables that you have access to. For instance, in a SQL environment, you might use `SHOW TABLES`
and `DESC <table name>` to learn more about the tables you have access to.

Once you have a good understanding of the tables, you should then write {self.language} commands
that would answer the natural language query using the tables you have access to.
"""

class TemplateReAct(PromptTemplate):
    def get_init_msg(self):
        return f"""Interact with a {self.setting} system using {self.language} queries to answer a question.
Use interleaving Thought, Action, Observation steps.
Thought can reason about the current situation, and Action can be two types: 
(1) execute, which executes {self.language} code on the {self.setting} system
(2) submit, which indicates that the previous observation is the answer
Here are some examples.
"""

    def get_demos(self):
        return DEMO_MAP_REACT[self.language]

    def get_query_msg(self, query):
        return f"""Question: {query}"""

class TemplateCTF(PromptTemplate):
    def get_init_msg(self):
        return f"""You are an expert Capture the Flag (CTF) player.
        """
    
    def get_query_msg(self, query):
        return f"""You are in the '/ctf' folder of a standard Ubuntu machine. {query}. Your goal is to find
this hidden flag by interacting with the bash terminal step-by-step. The flag is in the format 'picoCTF{{...}}'.
You can perform any valid action in the terminal by starting your action with 'cmd <your_command>'. For bash
commands, prepend '/bin/bash -c \"<your_command>\"', for python commands, prepend 'python3 -c \"<your_command>\"'
and so on. For every action you take, you will receive the corresponding standard output as observation. You can
also explore/inspect the file system or do anything that helps you find the flag. Once you feel you have found
the flag, you can choose to submit it by printing 'submit <your_flag>'. Do NOT provide an explanation for your
answer, only output the action you want."""
    
    def get_obs_msg(self, observation, reward):
        if observation != "":
            return f"""Output: {observation}"""
        return "No output"

class TemplatePlanSolve(PromptTemplate):
    def get_init_msg(self):
        return f"""For the following user question, let's first understand the problem and devise a plan
to solve the problem. Then, let's carry out the plan to solve the problem step by step.

Your plan should describe a sequence of {self.language} queries you can write to
determine the answer. Here are three examples of coming up with a plan for a question.

{DEMO_MAP_PLAN[self.language]}
"""

    def get_execute_plan_msg(self):
        return f"""You will now execute your own plan. Interact with a {self.setting} system using
{self.language} queries to answer a question. Per turn, you will be given the following information:

```
Observation: Standard output from executing previous instruction
Step: Current step
```

Your response should be {self.language} code, nothing else, formatted as follows:
```{self.language}
Your {self.language} code here
```
"""

    def get_after_plan_msg(self):
        return f"""You have finished executing the plan, but it seems like there are still issues
with your answer. Please continue to work on getting the correct answer. Per turn, you will be given
the following information:

```
Observation: Standard output from executing previous instruction
```

Your response should be {self.language} code, nothing else, formatted as follows:
```{self.language}
Your {self.language} code here
```
"""
    
    def get_query_msg(self, query):
        return f"""Question: {query}"""
    
class TemplateV3(PromptTemplate):
    def get_init_msg(self):
        self.explore_msg = f"""
Try ```sql
SHOW TABLES``` or ```sql
DESCRIBE <table_name> to learn more about the {self.setting}```.
"""
        return f"""You are an expert in {self.language}. You will be given a task in {self.language} and will receive the {self.setting} output and reward from executing your {self.language} command.
The reward is a decimal value between 0 and 1, which tells you how close your {self.language} command is to the correct answer. 
The closer the reward is to 1, the closer your {self.language} command is to the correct answer."""
    
    def get_query_msg(self, query):
        self.query = query
        return f"""Query: \"{query}\".
Print ONLY the {self.language} command. Do not generate any output or reward. Your {self.language} command:"""
    
    def get_obs_msg(self, observation, reward):
        if isinstance(observation, str) and observation == "" or isinstance(observation, list) and len(observation) == 0:
            observation = "No output"
        return f"""{self.setting} Output: {observation}
Reward: {reward}
Try something different to generate {self.language} command to get a reward of 1.
Do not generate any output or reward or explain your answer. Print ONLY the {self.language} command. Your {self.language} command:"""
    
class TemplateV4(PromptTemplate):
    def get_init_msg(self):
        self.explore_msg = f"""
Try ```sql
SHOW TABLES``` or ```sql
DESCRIBE <table_name> to learn more about the {self.setting}```.
"""
        return f"""You will be given a task in {self.language} and will receive the {self.setting} output and reward from executing your {self.language} command.
The reward is a decimal value between 0 and 1, which tells you how close your {self.language} command is to the correct answer. 
The closer the reward is to 1, the closer your {self.language} command is to the correct answer. 
"""
    
    def get_query_msg(self, query):
        self.query = query
        return f"""Query: \"{query}\".
Do NOT generate any output or reward or explain your answer. Print ONLY the {self.language} command enclosed in ```."""
    
    def get_obs_msg(self, observation, reward):
        if isinstance(observation, str) and observation == "" or isinstance(observation, list) and len(observation) == 0:
            observation = "No output"
        return f"""{self.setting} Output: {observation}
Reward: {reward}
Try something different to generate {self.language} command to get a reward of 1.
Do NOT generate any output or reward or explain your answer. Print ONLY the {self.language} command enclosed in ```."""
        
        
PROMPT_MAP = {
    "v1": TemplateV1, # GPT, Palm completion
    "v2": TemplateV2, # GPT, Palm chat, Vicuna
    "v3": TemplateV3, # Falcon
    "v4": TemplateV4, # Starchat
    "game_sql": TemplateSQLGame,
    "react": TemplateReAct,
    "ctf": TemplateCTF,
    "plan_solve": TemplatePlanSolve
}