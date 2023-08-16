# 46 Solution
Similar to task 44, the password is stored in the `checkPassword` function. However, instead of plaintext, the password is scrambled via a series of for loops, so the final solution flag shown in the last line of the function is not the actual flag.

It is possible to reverse engineer the password by undoing the `for` loop modifications. It can be done manually, or a simple script would do the trick, as shown in `solution.py`.