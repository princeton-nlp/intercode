# 83 Solution
This can be solved either by analyzing tje given assembly code or by actually compiling and executing it.

To compile we can use
```
aarch64-linux-gnu-as -o chall.o chall.S
aarch64-linux-gnu-gcc -static -o chall chall.o
```
Then running `./chall` with the given argument gives us the flag in decimal which we can convert to hexadecimal.
