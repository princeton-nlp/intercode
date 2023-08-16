# 51 Solution
Similar to task 44, the password is stored in the `checkPassword` function. However, instead of plaintext, the file is a bit messy and the password is scrambled via transposed bits.

We can write a script to reverse the operations performed on the scrambled password that is checked against to recover the original solution flag. A programatic solution is presented in `solution.java`.