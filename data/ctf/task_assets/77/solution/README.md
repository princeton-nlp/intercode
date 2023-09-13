# 77 Solution
This can be solved either by analyzing tje given assembly code or by actually compiling and executing it.

To compile we can use
```
aarch64-linux-gnu-as -o chall.o chall.S
aarch64-linux-gnu-gcc -static -o chall chall.o
```
Then we can brute force by running `./chall` using
```
for i in {0..1000}; do echo -n "$i "; ./chall $i; done | grep win
```
