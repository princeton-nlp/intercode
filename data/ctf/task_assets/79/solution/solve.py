from gmpy2 import *

def decrypt(c, p, q, e):
     ph = (p-1)*(q-1)
     d = invert(e, ph)
     return pow(c, d, p*q)

params = {}
with open("../public-key.txt") as f:
    for line in f:
        line = line.rstrip()
        name, value = line.split(":")
        params[name] = mpz(int(value))

p = gcd(params["n1"], params["n2"])
q = gcd(params["n1"], params["n3"])
r = gcd(params["n2"], params["n3"])

assert(p * q == params["n1"])
assert(p * r == params["n2"])
assert(q * r == params["n3"])

a1 = decrypt(params["c"], q, r, params["e"])
a2 = decrypt(a1, p, r, params["e"])
a3 = decrypt(a2, p, q, params["e"])

print(bytes.fromhex(format(a3, 'x')).decode("ascii"))