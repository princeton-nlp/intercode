# 95 Solution
The used cipher `Salsa20` is not directly attackable, but it leaks the length of the plaintext. So given an input given, we can know how much the flag plus input was compressed. Using this idea, an attack is developed.

[Attack script](https://ctftime.org/writeup/27105)

[Reference writeup](https://picoctf2021.haydenhousen.com/cryptography/compress-and-attack)