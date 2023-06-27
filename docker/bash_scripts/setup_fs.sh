#!/bin/sh
rm -rf /testbed/

mkdir -p /testbed/dir1/subdir1/subsubdir1
mkdir -p /testbed/dir1/subdir2
mkdir -p /testbed/dir2/subdir1
mkdir -p /testbed/dir2/subdir2/subsubdir1
mkdir -p /testbed/dir3/subdir1/subsubdir1
mkdir -p /testbed/dir3/subdir2

echo "Hello, World!" > /testbed/dir1/textfile1.txt
echo "Another text file" > /testbed/dir2/subdir1/textfile2.txt
echo "Yet another text file" > /testbed/dir3/subdir1/subsubdir1/textfile3.txt
echo "Text file 4" > /testbed/dir1/subdir1/textfile4.txt
echo "Text file 5" > /testbed/dir2/subdir2/textfile5.txt
echo "Text file 6" > /testbed/dir3/textfile6.txt

echo -e "#!/bin/sh\necho 'Shell script 1'" > /testbed/dir1/subdir1/shellscript1.sh
echo -e "#!/bin/sh\necho 'Shell script 2'" > /testbed/dir2/shellscript2.sh
echo -e "#!/bin/sh\necho 'Shell script 3'" > /testbed/dir3/subdir1/subsubdir1/shellscript3.sh
echo -e "#!/bin/sh\necho 'Shell script 4'" > /testbed/dir1/subdir1/subsubdir1/shellscript4.sh
echo -e "#!/bin/sh\necho 'Shell script 5'" > /testbed/dir2/subdir2/shellscript5.sh
chmod +x /testbed/dir1/subdir1/shellscript1.sh
chmod +x /testbed/dir2/shellscript2.sh
chmod +x /testbed/dir3/subdir1/subsubdir1/shellscript3.sh
chmod +x /testbed/dir1/subdir1/subsubdir1/shellscript4.sh
chmod +x /testbed/dir2/subdir2/shellscript5.sh

echo -e "#!/usr/bin/env python3\nprint('Python script 1')" > /testbed/dir1/subdir1/subsubdir1/pythonscript1.py
echo -e "#!/usr/bin/env python3\nprint('Python script 2')" > /testbed/dir2/subdir2/pythonscript2.py
echo -e "#!/usr/bin/env python3\nprint('Python script 3')" > /testbed/dir3/subdir1/pythonscript3.py
echo -e "#!/usr/bin/env python3\nprint('Python script 4')" > /testbed/dir1/subdir1/pythonscript4.py
chmod +x /testbed/dir1/subdir1/subsubdir1/pythonscript1.py
chmod +x /testbed/dir2/subdir2/pythonscript2.py
chmod +x /testbed/dir3/subdir1/pythonscript3.py
chmod +x /testbed/dir1/subdir1/pythonscript4.py

echo -e '{\n  "key1": "value1",\n  "key2": "value2",\n  "key3": "value3"\n}' > /testbed/dir1/subdir1/jsonfile1.json
echo -e 'column1,column2,column3\nvalue1,value2,value3\nvalue4,value5,value6' > /testbed/dir3/subdir2/csvfile1.csv