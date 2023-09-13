# 69 Solution
In RSA, M^3 mod n = c. This can also be written as M^3 = tn + c for some t. So, this means that M = iroot(tn+c, 3). Given that (M^3) is only "barely" larger than n, we can bruteforce to find the correct t.

A reference solution is in `solve.py`.