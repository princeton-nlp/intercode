import hashlib
username_trial = "FRASER"
bUsername_trial = b"FRASER"

key_part_static1_trial = "picoCTF{1n_7h3_|<3y_of_"
key_part_dynamic1_trial = "xxxxxxxx"
key_part_static2_trial = "}"
key_full_template_trial = key_part_static1_trial + key_part_dynamic1_trial + key_part_static2_trial

print(hashlib.sha256(bUsername_trial).hexdigest()[4]) 
print(hashlib.sha256(bUsername_trial).hexdigest()[5])
print(hashlib.sha256(bUsername_trial).hexdigest()[3])
print(hashlib.sha256(bUsername_trial).hexdigest()[6])
print(hashlib.sha256(bUsername_trial).hexdigest()[2])
print(hashlib.sha256(bUsername_trial).hexdigest()[7])
print(hashlib.sha256(bUsername_trial).hexdigest()[1])
print(hashlib.sha256(bUsername_trial).hexdigest()[8])