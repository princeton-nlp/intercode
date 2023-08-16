x =[0] * 8

x[0] = 1096770097
x[1] = 1952395366
x[2] = 1600270708
x[3] = 1601398833
x[4] = 1716808014
x[5] = 1734304867
x[6] = 942695730
x[7] = 942748212

ch = [None] * 4
buffer = ""

for i in range(0,8):
	tmp = str(bin(x[i])[2:].zfill(32))
	ch[0] = chr(int(hex(int(tmp[:8], 2)), 16))
	ch[1] = chr(int(hex(int(tmp[8:16], 2)), 16))
	ch[2] = chr(int(hex(int(tmp[16:24], 2)), 16))
	ch[3] = chr(int(hex(int(tmp[24:32], 2)), 16))
	buffer += ch[0] + ch[1] + ch[2] + ch[3]

print(buffer)