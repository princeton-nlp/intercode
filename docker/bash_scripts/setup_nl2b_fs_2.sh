#!/bin/bash
rm -rf /system/

# directories
mkdir -p /system/folder1
mkdir -p /system/folder2
mkdir -p /system/folder3
mkdir -p /system/folder3/temp
mkdir -p /system/folder3/temp/temp1
mkdir -p /system/folder3/temp/temp1/temp
mkdir -p /system/folder3/temp/temp1/temp_1
mkdir -p /system/folder3/backup_dbg
mkdir -p /system/folder3/backup_dbg/backup
mkdir -p /system/temp

# text files
echo 'Hello world!' > /system/text1.txt
echo -e 'Another hello world file' > /system/folder1/text2.txt
echo - e 'Hello!\nAnother hello world file' > /system/folder1/text3.txt
echo -e 'Hello!\nAnother hello world file' > /system/folder1/text4.txt
echo -e 'Keep this file' > /system/folder1/keep.txt
echo -e 'Foo!\n The first line in this file is foo' > /system/text3.txt
echo -e 'The first foo file in this directory!' > /system/folder2/text1.txt
echo -e 'The file with special name' > /system/folder2/special_text1.txt
echo -e 'The second file with special name' > /system/folder2/special_text2.txt
# a file with a space in the name
echo -e 'The third file with special name' > /system/folder2/"special text3.txt"
echo -e 'The fourth file with special name' > /system/folder3/"special text4.txt"
# write a longer file with 5 lines
echo -e 'The first line\nThe second line\nThe third line\nThe fourth line;\nThe fifth line' > /system/folder3/temp/temp1/text1.txt
# a file with "_dbg" in the name
echo -e 'The first line\n\n' > /system/folder3/backup_dbg/text1_dbg.txt
# an empty file
touch /system/folder3/temp/empty.txt
touch .placeholder /system/folder3/backup_dbg/backup

# html files
echo -e '<html>\n<head>\n<title>HTML File 1</title>\n</head>\n<body>\n<h1>HTML File 1</h1>\n<p>This is the first HTML file</p>\n</body>\n</html>' > /system/html1.html

# binary *.out files
echo -e '\x7f\x45\x4c\x46\x01\x01\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x03\x00\x01\x00\x00\x00\x00\x00\x00\x00\x80\x04\x08\x00\x80\x04\x08' > /system/folder1/a.out
echo -e '\x7f\x45\x4c\x46\x01\x01\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x03\x00\x01\x00\x00\x00\x00\x00\x00\x00\x80\x04\x08\x00\x80\x04\x08' > /system/a.out
touch -m -t202304012359.00 /system/a.out

# doc files
echo -e 'This is a doc file' > /system/folder1/doc1.doc
echo -e 'This is another doc file' > /system/folder1/doc2.doc

# log files
echo -e 'This is a log file' > /system/folder1/log1.log

# sql files
echo -e 'CREATE TABLE Persons (\nPersonID int,\nLastName varchar(255),\nFirstName varchar(255),\nAddress varchar(255),\nCity varchar(255)\n);' > /system/folder3/backup_dbg/sql1.sql
touch -m -t202303012359.00 /system/folder3/backup_dbg/sql1.sql

# scripts
echo -e '#!/bin/bash\n\n# This is a script file' > /system/folder1/script1.sh
echo -e '#!/bin/bash\n\n# New script file' > /system/folder1/new.sh

# csv files
echo -e '1,2,3,4,5,6,7,8,9,10' > /system/folder1/data.csv

# .DS_Store file
touch /system/.DS_Store

# a MANIFEST file
echo "text1.txt" > /system/MANIFEST
echo "text3.txt" >> /system/MANIFEST

# zip all files in folder2 to .gz file
tar -czvf /system/folder2.tar.gz /system/folder2

# some timestamp modified files
touch -m -t202305312359.59 /system/folder1/recent.txt
touch -m -t20230522359.59 /system/old.txt
touch -m -t202303012359.59 /system/folder1/old2.txt
touch -m -t202303012159.59 /system/temp/keep.txt
