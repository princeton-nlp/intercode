buffer = [None] * 32
password = 'jU5t_a_sna_3lpm18g947_u_4_m9r54f'

for i in range(0,8):
	buffer[i] = password[i]

for i in range(8,16):
    	buffer[i] = password[23-i]

for i in range(16,32,2):
    	buffer[i] = password[46-i]

for i in range(31,16,-2):
    	buffer[i] = password[i]

print(''.join(buffer))
