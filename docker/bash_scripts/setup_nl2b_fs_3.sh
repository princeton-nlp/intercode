#!/bin/bash
rm -rf /workspace
rm -rf /backup

## directories
mkdir -p /backup
mkdir -p /workspace/dir1
mkdir -p /workspace/dir2
mkdir -p /workspace/dir2/mysql
mkdir -p /workspace/test
mkdir -p /workspace/test/dir1
mkdir -p /workspace/test/2dir
mkdir -p /workspace/test/3dir
mkdir -p -m 755 -d "1 year ago" /workspace/test/1dir

## c files
echo -e '#include <stdio.h>\n\nint main() {\n\tprintf("Hello, World!");\n\treturn 0;\n}' > /workspace/dir1/hello.c
echo -e '#include <stdio.h>\n\nint main() {\n\tint a, b, sum;\n\tprintf("Enter two numbers to add\\n");\n\tscanf("%d%d", &a, &b);\n\tsum = a + b;\n\tprintf("Sum of entered numbers = %d\\n",sum);\n\treturn 0;\n}' > /workspace/dir1/sum.c

## shell scripts
echo -e '#!/bin/bash\n\n# This is a script file' > /workspace/dir1/script1.sh
echo -e '#!/bin/bash\n\n# New script file' > /workspace/dir1/new1.sh 
echo -e '#!/bin/bash\n\n# New script file' > /workspace/new.sh
chmod +x /workspace/dir1/script1.sh
chmod +x /workspace/dir1/new1.sh
chmod +x /workspace/new.sh

## txt files
echo -e 'hello!' > /workspace/dir1/hello.txt
echo -e 'Another hello world file' > /workspace/dir2/foo.txt
echo -e 'hello!' > /workspace/dir2/hello.txt
echo -e 'The first line\nThe second line\nThe third line\nThe fourth line;\nThe fifth line' > /workspace/dir1/long.txt
echo -e 'The first line\nThe second line\nThe third line\nThe fourth line;\nThe fifth line\nTERMINATEThe sixth line--' > /workspace/dir1/terminate.txt
echo "/workspace/dir1" > /workspace/results.txt
echo "/workspace/dir2/foo.txt" > /workspace/files.txt
# a file with many empty lines
echo -e "The first line" > /workspace/dir1/a.txt
yes '' | head -n 10 >> /workspace/dir1/a.txt
echo -e "The first line\nThe second line\nThe third line\n" > /workspace/dir1/file.txt
echo -e "new file\n" > /backup/file.txt
# read-only file
touch /workspace/dir1/readonly.txt
chmod 400 /workspace/dir1/readonly.txt
# file with all permissions
touch /workspace/dir1/all.txt
chmod 777 /workspace/dir1/all.txt
# larger files
dd if=/dev/zero of=/workspace/dir1/file.txt bs=2K count=2
dd if=/dev/zero of=/workspace/dir1/file.c bs=1K count=2
# some timestamp modified files
touch -m -t $(date -v-1d -j -f "%Y%m%d%H%M.%S" "$(date +%Y%m%d%H%M.%S)" +%Y%m%d%H%M.%S) /workspace/recent.txt
touch -m -t202305312359.59 /workspace/recent1.txt
touch -m -t202302312359.59 /workspace/old.txt
touch -m -t202304312359.59 /workspace/old1.txt
touch -m -t202301312359.59 /workspace/old2.txt
# hidden files
echo -e 'This is a hidden file' > /workspace/dir1/.hidden1.txt
echo -e 'This is another hidden file' > /workspace/.hidden.txt

## postgresql files
echo -e 'CREATE TABLE Persons (\nPersonID int,\nLastName varchar(255),\nFirstName varchar(255),\nAddress varchar(255),\nCity varchar(255)\n);' > /workspace/dir2/mysql/sql1.sql

## archive files
tar -czf /workspace/archive.tar.gz /workspace/dir2/foo.txt /workspace/recent.txt /workspace/dir1/new.sh 

## csv files
echo -e 'column1,column2,column3\nvalue1,value2,value3\nvalue4,value5,value6\nvalue7,values8,values9' > /workspace/dir2/csvfile1.csv