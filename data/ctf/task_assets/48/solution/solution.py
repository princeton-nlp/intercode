import base64

encoded = 'JTYzJTMwJTZlJTc2JTMzJTcyJTc0JTMxJTZlJTY3JTVmJTY2JTcyJTMwJTZkJTVmJTYyJTYxJTM1JTY1JTVmJTM2JTM0JTVmJTY1JTMzJTMxJTM1JTMyJTYyJTY2JTM0'
data = base64.b64decode(encoded).decode('utf-8')
data = data.replace('%', ' 0x')

ch = data.split(" ")

print('picoCTF{', end = '')
for c in ch:
	if(c != ''):
		print(chr(int(c, 16)), end = '')

print('}\n', end = '')