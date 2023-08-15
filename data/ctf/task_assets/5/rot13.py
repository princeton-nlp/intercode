# initial encrypted text
flag = input()

# A-Z
AZ = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

# a-z
az = "abcdefghijklmnopqrstuvwxyz"

# string to store result
s = ""

# iterate through encrypted flag
for x in flag:
    # if the character is in AZ
    if x in AZ:
        # go 13 characters further from the current character
        s += AZ[(AZ.index(x)+13)%len(AZ)]
        # if the character is in az
    elif x in az:
        # go 13 characters further from the current character
        s += az[(az.index(x)+13)%len(az)]
    else:
        # else add the character
        s += x

# print string
print(s)