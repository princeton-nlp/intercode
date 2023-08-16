# 50 Solution
Similar to task 44, the password is stored in the `checkPassword` function. However, instead of plaintext, each character is shown as a byte value with its ASCII encoding. In order to reverse the appliedo perations, we first store the constants presented in the check at the end of the function within a list.

Then, based on which "fourth" each value falls in, a corresponding bit shift is performed, complementary to the logic in `passwordToIntArray`. We can then concatenate each string portion together to get the final solution flag. This approach is written in `solution.py`.