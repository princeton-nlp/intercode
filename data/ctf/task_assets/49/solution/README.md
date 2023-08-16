# 49 Solution
Reminder that a property of XOR (^) is if X ^ Y = Z, then Z ^ Y = X.

Similar to task 44, the password is stored in the `checkPassword` function. However, instead of plaintext, the password is stored as a set of bytes.

Following the `for` loop condition starting on line 35, we can XOR each value with `0x55` again to remove the original modification. The `solution.py` script contains a runnable example that generates the solution flag.