import string
import itertools
import numpy as np
from tqdm import tqdm
from collections import defaultdict

LOWERCASE_OFFSET = ord("a")
ALPHABET = string.ascii_lowercase[:16]

key_length = 9
cipher_text = "lejjlnjmjndkmjinkilbmlljjkmnakmmighhocmllojhjmaijpiohnlojmokjkja"
# Split the cipher_text into chunks of `key_length`
cipher_text_grid = [cipher_text[i:i + key_length] for i in range(0, len(cipher_text), key_length)]
# Convert the cipher text to a list of list instead of a list of strings
cipher_text_grid = [list(x) for x in cipher_text_grid]
# Pad the last list to the same length as the others
while len(cipher_text_grid[-1]) < len(cipher_text_grid[0]):
    cipher_text_grid[-1] += "0"
# Convert to numpy matrix
cipher_text_grid = np.array(cipher_text_grid)

print("Vignere Matrix:")
print(cipher_text_grid)

def b16_decode(solve):
    dec = ""
    for idx in range(0, len(solve), 2):
        # Get the current and next letters so we can create the one letter that
        # was split in half by `b16_encode`.
        c1 = solve[idx]
        c2 = solve[idx + 1]
        # Determine the location of these letters in the alphabet. The coresponds to
        # the code inside the square brackets `ALPHABET[int(binary[:4], 2)]` from
        # `b16_encode`.
        c1 = ALPHABET.index(c1)
        c2 = ALPHABET.index(c2)
        # Convert the numbers to binary
        binary1 = "{0:04b}".format(c1)
        binary2 = "{0:04b}".format(c2)
        # Add the two binary strings together to recover the encoded character
        binary = int(binary1 + binary2, 2)

        dec += chr(binary)
    return dec

def unshift(c, k):
    # Offset the letters in the opposite direction.
    t1 = ord(c) + LOWERCASE_OFFSET
    t2 = ord(k) + LOWERCASE_OFFSET
    # Instead of moving forward through the alphabet, move backwards.
    return ALPHABET[(t1 - t2) % len(ALPHABET)]

total_guesses = 0

key = defaultdict(list)
for idx, column in enumerate(cipher_text_grid.T):
    print("Trying column %i... " % idx, end="")
    if len(column) % 2 != 0:
        column = column[:-1]
    # Try every possible offset to see what key produces the flag.
    for letter in ALPHABET:
        total_guesses += 1
        # `letter` is the key
        dec = ""
        # Apply the opposite of the `shift` function on each letter.
        for i, c in enumerate(column):
            dec += unshift(c, letter)
        # Reverse the `b16_encode` function.
        dec = b16_decode(dec)
        # Only count keys as potentially valid if the `b16_decode` produces output
        # that meets the requirements in the assert statement in `new_vignere.py`.
        if all([c in "abcdef0123456789" for c in dec.strip()[:-1]]):
            print("Found key `%s`... " % letter, end="")
            key[idx].append(letter)
    
    if not key[idx]:
        # No key found
        key[idx] = -1
    # Newline for formatting
    print()

print("Key Possibilities: %s" % dict(key))

num_unknown = len([x for x in key.values() if x == -1])
print("Bruteforcing %i values..." % num_unknown)
for key_filler in tqdm(itertools.permutations(ALPHABET, num_unknown)):
    total_guesses += 1
    key_filler = list(key_filler)
    full_key = ""
    for idx, letter in key.items():
        if letter == -1:  # if letter of key is unknown
            full_key += key_filler.pop()
        else:
            full_key += letter[0]
    full_key = "".join(full_key)
    dec = ""
    # Apply the opposite of the `shift` function on each letter.
    for i, c in enumerate(cipher_text):
        dec += unshift(c, full_key[i % len(full_key)])
    # Reverse the `b16_encode` function.
    dec = b16_decode(dec)
    # Only show potential flags that meets the requirements in the
    # assert statement in `new_vignere.py`.
    if all([c in "abcdef0123456789" for c in dec.strip()]):
        print("Flag Possibility: picoCTF{%s}" % dec)

print("Bruteforcing Complete")
print("Total Guesses: %s" % total_guesses)