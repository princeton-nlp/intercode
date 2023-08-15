# 12 Solution
Read more about RSA [here](https://en.wikipedia.org/wiki/RSA_(cryptosystem))

From `values`:
* `C` is the ciphertext
* `N` is the product of two prime numbers `p` and `q`
* `E` is the multiplicative inverse of a private exponent `d` modulo `phi`
* `Phi` is equal to `(p-1)*(q-1)`

From these values, we can use the `Cipher` library to compute m, which we then convert from `long` to `bytes` to get the solution flag.