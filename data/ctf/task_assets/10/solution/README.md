# 10 Solution
The encoding scheme acts on two characters from the flag each time. The first character is used as higher 8 bits, while the second character is used as lower 8 bits. Together, the 2-character pair is transformed into a 16-bit binary number and this binary number is converted to ASCII character.

[Reference](https://www.ctfwriteup.com/picoctf/picoctf-2021/picoctf-2021-reverse-engineering#transformation)