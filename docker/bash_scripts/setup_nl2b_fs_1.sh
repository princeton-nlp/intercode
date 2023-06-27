#!/bin/bash
rm -rf /testbed/

## directories
mkdir -p /testbed/dir1/subdir1/subsubdir1
mkdir -p /testbed/dir1/subdir2
mkdir -p /testbed/dir2/subdir1
mkdir -p /testbed/dir2/subdir2/subsubdir1
mkdir -p /testbed/dir3/subdir1/subsubdir1
mkdir -p /testbed/dir3/subdir2
mkdir -p /testbed/dir3/subdir1/subsubdir1/tmp
mkdir -p /testbed/dir3/subdir1/subsubdir1/FooBar

## text files
echo 'Hello, World!' > /testbed/dir1/textfile1.txt
echo -e 'text file\nAnother text file' > /testbed/dir2/subdir1/textfile2.txt
echo -e 'text file\nYet another text file' > /testbed/dir3/subdir1/subsubdir1/textfile3.txt
echo 'Text file 4\nGene 1' > /testbed/dir1/subdir1/textfile4.txt
echo 'Text file 5Gene 2' > /testbed/dir2/subdir2/textfile5.txt
echo 'Text file 6' > /testbed/dir3/textfile6.txt
echo 'Text file 7 with some random contents in it' > /testbed/textfile7.txt
echo 'Text file in tmp' > /testbed/dir3/subdir1/subsubdir1/file.txt
# some timestamp modified files
touch -m -t202305312359.59 /testbed/recent.txt
echo 'Text file in tmp' > /testbed/dir3/subdir1/subsubdir1/tmp/tmp.txt
touch -m -t202205312359.59 /testbed/dir3/subdir1/subsubdir1/tmp/tmp.txt

## shell scripts
echo -e '#!/bin/sh\necho "Shell script 1"' > /testbed/dir1/subdir1/shellscript1.sh
echo -e '#!/bin/sh\necho "Shell script 2"' > /testbed/dir2/shellscript2.sh
echo -e '#!/bin/sh\necho "Shell script 3"' > /testbed/dir3/subdir1/subsubdir1/shellscript3.sh
echo -e '#!/bin/sh\necho "Shell script 4"' > /testbed/dir1/subdir1/subsubdir1/shellscript4.sh
echo -e '#!/bin/sh\necho "Shell script 5"' > /testbed/dir2/subdir2/shellscript5.sh
chmod +x /testbed/dir1/subdir1/shellscript1.sh
chmod +x /testbed/dir2/shellscript2.sh
chmod +x /testbed/dir3/subdir1/subsubdir1/shellscript3.sh
chmod +x /testbed/dir1/subdir1/subsubdir1/shellscript4.sh
chmod +x /testbed/dir2/subdir2/shellscript5.sh

## py scripts
echo -e '#!/usr/bin/env python3\nprint("Python script 1")' > /testbed/dir1/subdir1/subsubdir1/pythonscript1.py
echo -e '#!/usr/bin/env python3\nprint("Python script 2")' > /testbed/dir2/subdir2/pythonscript2.py
echo -e '#!/usr/bin/env python3\nprint("Python script 3")' > /testbed/dir3/subdir1/pythonscript3.py
echo -e '#!/usr/bin/env python3\nprint("Python script 4")' > /testbed/dir1/subdir1/pythonscript4.py
chmod +x /testbed/dir1/subdir1/subsubdir1/pythonscript1.py
chmod +x /testbed/dir2/subdir2/pythonscript2.py
chmod +x /testbed/dir3/subdir1/pythonscript3.py
chmod +x /testbed/dir1/subdir1/pythonscript4.py

## java files
echo 'public class Hello { public static void main(String[] args) { System.out.println(\"Hello world!\"); }}' > /testbed/Hello.java
echo 'public class Hello { public static void main(String[] args) { System.out.println(\"Hello world!\"); }}' > /testbed/Hello1.java
echo 'public class NewClass { public static void main(String[] args) { System.out.println(\"This is a new Java file!\"); }}' > /testbed/NewClass.java
echo 'public class FirstClass { public static void main(String[] args) { System.out.println(\"This is Java file 1!\"); }}' > /testbed/dir2/subdir1/javafile1.java
echo 'public class Hello { public static void main(String[] args) { System.out.println(\"Hello world!\"); }}' > /testbed/dir1/AnotherHello.java

## json files
echo -e '{\n  "key1": "value1",\n  "key2": "value2",\n  "key3": "value3"\n}' > /testbed/dir1/subdir1/jsonfile1.json
echo -e 'column1,column2,column3\nvalue1,value2,value3\nvalue4,value5,value6' > /testbed/dir3/subdir2/csvfile1.csv

## php files
echo '<?php echo "Hello, world!"; ?>' > /testbed/hello.php
echo '<?php phpinfo(); ?>' > /testbed/dir1/info.php

## c files
echo -e '#include <stdio.h>\nint main() {\n  printf(\"Hello, world!\");\n  return 0;\n}' > /testbed/hello.c

## FooBar files
echo "A sample file with FooBar" > /testbed/dir3/subdir1/subsubdir1/FooBar/file.txt
echo '<html><head><title>Test</title></head><body><h1>Hello, FooBar!</h1></body></html>' > /testbed/FooBar.html

## html files
echo '<html><head><title>Test</title></head><body><h1>Hello, world!</h1></body></html>' > /index.html