# Python program to implement Morse Code Translator
# Credit to https://www.geeksforgeeks.org/morse-code-translator-python/
import argparse

# Dictionary representing the morse code chart
MORSE_CODE_DICT = { 'A':'.-', 'B':'-...',
					'C':'-.-.', 'D':'-..', 'E':'.',
					'F':'..-.', 'G':'--.', 'H':'....',
					'I':'..', 'J':'.---', 'K':'-.-',
					'L':'.-..', 'M':'--', 'N':'-.',
					'O':'---', 'P':'.--.', 'Q':'--.-',
					'R':'.-.', 'S':'...', 'T':'-',
					'U':'..-', 'V':'...-', 'W':'.--',
					'X':'-..-', 'Y':'-.--', 'Z':'--..',
					'1':'.----', '2':'..---', '3':'...--',
					'4':'....-', '5':'.....', '6':'-....',
					'7':'--...', '8':'---..', '9':'----.',
					'0':'-----', ', ':'--..--', '.':'.-.-.-',
					'?':'..--..', '/':'-..-.', '-':'-....-',
					'(':'-.--.', ')':'-.--.-'}

# Function to encrypt the string
# according to the morse code chart
def encrypt(message):
	cipher = ''
	for letter in message:
		if letter != ' ':

			# Looks up the dictionary and adds the
			# corresponding morse code
			# along with a space to separate
			# morse codes for different characters
			cipher += MORSE_CODE_DICT[letter] + ' '
		else:
			# 1 space indicates different characters
			# and 2 indicates different words
			cipher += ' '

	return cipher

# Function to decrypt the string
# from morse to english
def decrypt(message):

	# extra space added at the end to access the
	# last morse code
	message += ' '

	decipher = ''
	citext = ''
	for letter in message:

		# checks for space
		if (letter != ' '):

			# counter to keep track of space
			i = 0

			# storing morse code of a single character
			citext += letter

		# in case of space
		else:
			# if i = 1 that indicates a new character
			i += 1

			# if i = 2 that indicates a new word
			if i == 2 :

				# adding space to separate words
				decipher += ' '
			else:

				# accessing the keys using their values (reverse of encryption)
				decipher += list(MORSE_CODE_DICT.keys())[list(MORSE_CODE_DICT
				.values()).index(citext)]
				citext = ''

	return decipher


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("message", help="message to encrypt or decrypt")
    parser.add_argument("--encrypt", help="encrypt a message", default=False, action="store_true")
    parser.add_argument("--decrypt", help="decrypt a message", default=False, action="store_true")
    parsed_args = parser.parse_args()

    if parsed_args.encrypt and parsed_args.decrypt:
        print("Please choose either --encrypt or --decrypt")

    if parsed_args.encrypt:
        parsed_args.message = ''.join(filter(str.isalpha, parsed_args.message))
        result = encrypt(parsed_args.message.upper())
        print(result)
    elif parsed_args.decrypt:
        parsed_args.message = ''.join(filter(lambda x: x in ['.', '-', ' '], parsed_args.message))
        result = decrypt(parsed_args.message)
        print (result)

# Executes the main function
if __name__ == '__main__':
	main()
