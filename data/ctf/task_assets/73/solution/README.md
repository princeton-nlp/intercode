# 73 Solution
The given encrypted flag is 64 hex digits or 32 bits. By feeding in data as `python -c "print('a'*49968);print('a'*32)" | nc mercury.picoctf.net 36981` we get encrypted data. Using 2 XORs we get the hex of the flag.

```
encrypted_flag = 0x5541103a246e415e036c4c5f0e3d415a513e4a560050644859536b4f57003d4c
encrypted_data = 0x0346483f243d1959563d1907563d1903543d190551023d1959073d1902573d19
plain_data = 0x6161616161616161616161616161616161616161616161616161616161616161
plain_flag = (encrypted_flag^encrypted_data^plain_data)
```

[Referene writeup](https://hackmd.io/@nataliepjlin/BJCMEoni2)