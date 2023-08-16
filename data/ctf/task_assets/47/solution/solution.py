passBytes = [None] * 32
myBytes = [
    106, 85, 53, 116, 95, 52, 95, 98,
    '0x55', '0x6e', '0x43', '0x68', '0x5f', '0x30', '0x66', '0x5f',
    '0142', '0131', '0164', '063', '0163', '0137', '070', '0146',
    '4', 'a', '6', 'c', 'b', 'f', '3', 'b'
]

# base10
for i in range(0,8):
	passBytes[i] =  chr(myBytes[i])

# base16
for i in range(8,16):
	#passBytes[i] =  bytearray.fromhex(myBytes[i].replace('0x', '')).decode()
	passBytes[i] =  chr(int(myBytes[i], 16))

# base8
for i in range(16,24):
	passBytes[i] =  chr(int(myBytes[i], 8))

for i in range(24,32):
	passBytes[i] =  myBytes[i]

print(''.join(passBytes))