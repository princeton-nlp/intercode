#!/usr/bin/env python3

with open('enc', 'r') as f:
    encoded = f.read()

    flag = ''
    for ch in encoded:
        binary = "{0:016b}".format(ord(ch))
        first_half, second_half = binary[:8], binary[8:]
        flag += chr(int(first_half, 2))
        flag += chr(int(second_half, 2))

    print(flag)
