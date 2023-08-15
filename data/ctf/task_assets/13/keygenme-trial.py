#============================================================================#
#============================ARCANE CALCULATOR===============================#
#============================================================================#

import hashlib
from cryptography.fernet import Fernet
import base64



# GLOBALS --v
arcane_loop_trial = True
jump_into_full = False
full_version_code = ""

username_trial = "FRASER"
bUsername_trial = b"FRASER"

key_part_static1_trial = "picoCTF{1n_7h3_|<3y_of_"
key_part_dynamic1_trial = "xxxxxxxx"
key_part_static2_trial = "}"
key_full_template_trial = key_part_static1_trial + key_part_dynamic1_trial + key_part_static2_trial

star_db_trial = {
  "Alpha Centauri": 4.38,
  "Barnard's Star": 5.95,
  "Luhman 16": 6.57,
  "WISE 0855-0714": 7.17,
  "Wolf 359": 7.78,
  "Lalande 21185": 8.29,
  "UV Ceti": 8.58,
  "Sirius": 8.59,
  "Ross 154": 9.69,
  "Yin Sector CL-Y d127": 9.86,
  "Duamta": 9.88,
  "Ross 248": 10.37,
  "WISE 1506+7027": 10.52,
  "Epsilon Eridani": 10.52,
  "Lacaille 9352": 10.69,
  "Ross 128": 10.94,
  "EZ Aquarii": 11.10,
  "61 Cygni": 11.37,
  "Procyon": 11.41,
  "Struve 2398": 11.64,
  "Groombridge 34": 11.73,
  "Epsilon Indi": 11.80,
  "SPF-LF 1": 11.82,
  "Tau Ceti": 11.94,
  "YZ Ceti": 12.07,
  "WISE 0350-5658": 12.09,
  "Luyten's Star": 12.39,
  "Teegarden's Star": 12.43,
  "Kapteyn's Star": 12.76,
  "Talta": 12.83,
  "Lacaille 8760": 12.88
}


def intro_trial():
    print("\n===============================================\n\
Welcome to the Arcane Calculator, " + username_trial + "!\n")    
    print("This is the trial version of Arcane Calculator.")
    print("The full version may be purchased in person near\n\
the galactic center of the Milky Way galaxy. \n\
Available while supplies last!\n\
=====================================================\n\n")


def menu_trial():
    print("___Arcane Calculator___\n\n\
Menu:\n\
(a) Estimate Astral Projection Mana Burn\n\
(b) [LOCKED] Estimate Astral Slingshot Approach Vector\n\
(c) Enter License Key\n\
(d) Exit Arcane Calculator")

    choice = input("What would you like to do, "+ username_trial +" (a/b/c/d)? ")
    
    if not validate_choice(choice):
        print("\n\nInvalid choice!\n\n")
        return
    
    if choice == "a":
        estimate_burn()
    elif choice == "b":
        locked_estimate_vector()
    elif choice == "c":
        enter_license()
    elif choice == "d":
        global arcane_loop_trial
        arcane_loop_trial = False
        print("Bye!")
    else:
        print("That choice is not valid. Please enter a single, valid \
lowercase letter choice (a/b/c/d).")


def validate_choice(menu_choice):
    if menu_choice == "a" or \
       menu_choice == "b" or \
       menu_choice == "c" or \
       menu_choice == "d":
        return True
    else:
        return False


def estimate_burn():
  print("\n\nSOL is detected as your nearest star.")
  target_system = input("To which system do you want to travel? ")

  if target_system in star_db_trial:
      ly = star_db_trial[target_system]
      mana_cost_low = ly**2
      mana_cost_high = ly**3
      print("\n"+ target_system +" will cost between "+ str(mana_cost_low) \
+" and "+ str(mana_cost_high) +" stone(s) to project to\n\n")
  else:
      # TODO : could add option to list known stars
      print("\nStar not found.\n\n")


def locked_estimate_vector():
    print("\n\nYou must buy the full version of this software to use this \
feature!\n\n")


def enter_license():
    user_key = input("\nEnter your license key: ")
    user_key = user_key.strip()

    global bUsername_trial
    
    if check_key(user_key, bUsername_trial):
        decrypt_full_version(user_key)
    else:
        print("\nKey is NOT VALID. Check your data entry.\n\n")


def check_key(key, username_trial):

    global key_full_template_trial

    if len(key) != len(key_full_template_trial):
        return False
    else:
        # Check static base key part --v
        i = 0
        for c in key_part_static1_trial:
            if key[i] != c:
                return False

            i += 1

        # TODO : test performance on toolbox container
        # Check dynamic part --v
        if key[i] != hashlib.sha256(username_trial).hexdigest()[4]:
            return False
        else:
            i += 1

        if key[i] != hashlib.sha256(username_trial).hexdigest()[5]:
            return False
        else:
            i += 1

        if key[i] != hashlib.sha256(username_trial).hexdigest()[3]:
            return False
        else:
            i += 1

        if key[i] != hashlib.sha256(username_trial).hexdigest()[6]:
            return False
        else:
            i += 1

        if key[i] != hashlib.sha256(username_trial).hexdigest()[2]:
            return False
        else:
            i += 1

        if key[i] != hashlib.sha256(username_trial).hexdigest()[7]:
            return False
        else:
            i += 1

        if key[i] != hashlib.sha256(username_trial).hexdigest()[1]:
            return False
        else:
            i += 1

        if key[i] != hashlib.sha256(username_trial).hexdigest()[8]:
            return False



        return True


def decrypt_full_version(key_str):

    key_base64 = base64.b64encode(key_str.encode())
    f = Fernet(key_base64)

    try:
        with open("keygenme.py", "w") as fout:
          global full_version
          global full_version_code
          full_version_code = f.decrypt(full_version)
          fout.write(full_version_code.decode())
          global arcane_loop_trial
          arcane_loop_trial = False
          global jump_into_full
          jump_into_full = True
          print("\nFull version written to 'keygenme.py'.\n\n"+ \
                 "Exiting trial version...")
    except FileExistsError:
    	sys.stderr.write("Full version of keygenme NOT written to disk, "+ \
	                  "ERROR: 'keygenme.py' file already exists.\n\n"+ \
			  "ADVICE: If this existing file is not valid, "+ \
			  "you may try deleting it and entering the "+ \
			  "license key again. Good luck")

def ui_flow():
    intro_trial()
    while arcane_loop_trial:
        menu_trial()



# Encrypted blob of full version
full_version = \
b"""
gAAAAABgT_nvqFdgzE0SICXvq-e6JoMrQpqxEKXoCsaUgvMCZM4ulMyWVfQ0hUgnEpPeHuqAYmmlpjm2A_LEpzWtUdkEY2-4rL050RgyNH_iDwMQdZcSvPBFdm2rWGesrNbtmnTnufKguVjMKO3ZiAM-zUNStGQ0cKInxOh09MG-rb2zGllNW7Qi26sScACcEVKwGmg52oilK7jY4aIzwImuZzruVi3ntZTXV7FgoLwfq4xH_tjmrv9oBLNtE243Z-bYE5117d8XChg8FncOJzEPVDRCwyQLLWZixOgkz8wTegIFkE4XK-WhspovwBBYQsSDhVuSECScugNyIC_wEwB-MEFg0Niz7scTO7cppqvJYkfkPSjG2C7tEVYlDBR-7ppjoTmh94P2IXGglPTjgyE2AwjXYNf4vm6Klm5UzrqbUHcqnsgXidAauM8YYM-bJxBteSXTrFEizvn-pTk41DxkeuHhKBELPzqb5cFDPOaIUvBRBWUh554CrPqG8cxFevn8w572ZpX8OTxQSeDzPijjNcH0WxWr3LOt1IuNYd1p_GiJWBwarn8yU-T9_WR77bYGYrFwnHOUp5rkXTohtxYv_CErqEiE6suaFk_7A5hER13hPjpX7WawnqEoOEWof2VaBTRDIeG_tueD5obgXH-KNeVvmGb-VvfEKtYH6nP4FI--xj1G86X3I-qS9akX0SYdlrIn_th51JN8-VNeT2F5ZBGT2W5im5K0aGkW4punB1Xm-OTcHa1cOsY883HthseLsXx4aW7tDiC2YMd4R1GjoFp4LNiseHEQsTbN0yOybF3xNjfY-cdf9Qpe1ssO0k4nyRpB4kbZTJ2L3gwDPutoNocAfe26ettfIfB2Ma87FY6Ywq8fezi0TbzdTESrODKhz-9al6dBM0l2Jwu5HtciWs36SfE8vl6lns9Hfri-BXYn_fiFDkpSDtncNwm8OBXlrQEQauaoCxWoxug72fwp9Y6E_FCutLdp5iIHh4ykZuLEi40cFE54SNb4yliqlyUe3lZ_0UaS7haJ32wgV2SL8Fpyf2UqK-0ymB8aqlWpXTrOZCDeIVFA529uRVl2c0JDhiJWD2ZfZLBmrB-u2CCO80VKovEkmRnm-xnNKBv8Gx5FMcbAPOapU0TLbE7PA1lWHw1dQwPe_8CdwuQbFLAKQei3GdzF9HjesGeI_simwQyEHc46lmgRKsCcW1yAatKLqc2BimE6tPVgRRdFpzX5nOnQ3lTJmbFTmNQ3BzrZKecEYIjDdtLOX3xPGR5ffLR365ZVDNfsa4UqVgtr-VvQX5ZiK7-z8HBOXD97123-U_1WTq1RVaH5gCCC8RUj9jKQ_rqXyTFdIL5AUSk_XCGu9oU_1CqKDxYLOlSbQ7MjJgidCyNpKXNurICDyZX3u16A2Qmr4jqUTtZQRV_tWIB2UfpPDsfwSpFOrIg4cq7jI-MXl9-AWyjWqxj29ha1ZyOCietO464jbcoGhLhbd0ocDdcLEs1aF_pXn8XPe17j8Fxobf8rugBK0vfZD9CVbl-wpAYqkjhpr4f5a0WHJ2En-Fm5RS5CLKyte7iX2bIsmStrsLOznNmElo6pQse1KdVubwvF4FGIoKrSbt7ZKdYtghJPmE-q-boJwdaIKmkcB0O_JASNcJ7s1ToyFSSrhIpevkpc6KwM00jG4-5P628uZATjnTuN0JIPOzN3NW0Gu0Nwf-iNfZqmdhmvbou7obiTMpeczG0lGHN74AJ0p98DL8HqIduH3QbcTNJC3u7DGEhrxh9nh5WOhm9jB80eVvBikP8CZTcQhP1nBg21GbLdNGrP1TO8gUOjxbW34wWpazI0D1qdtY48PemrUUIZafN8i1LBho5-Yb8EuxsgpwhGPdyl55sT2-rP2Au_QlFaC5h9QfG7FJLOqZgklmssRjVp0U316P4crI136bVsUNRqeXeNUJugE-zQXdLFwvZ7-zS4ghjz-jkSU8CPH86Lc0OE5eZVVifZh8uDQcJ94wfbJCDIvE-IljfxGrXriffCHvZqVukWPaSxG3XZ6-zWR8GMfkXn6qxT5EM7VQ5izwZabUZmyLxBfeccfsfVglp-6DSgMyyGAU3kcZr1mp0KlKhk7bOF7rr7tZkHX2T1rxluT3e6ek_a4aESqhNlU2If8XaqdSZM1Usbbn2MrUN7aTuOMNmY5A7g0BXfRFsTEY_ZAVss3voQUZy4LE3-qIuD2weWejJfNFerg9xx5Xs1xNGmnlqSW0-Q11eNYzdXzI44ZsDfqr2oXGVuVKjAmDzum8m45vd50SfUJlqk7E7aYotvS5qGpQhKNe7m1gw8_Oj2O2qGxMzxUeprCxt3_sLdsXWn0cOEf2YcVMM-UAjpN4xpzy4gKpflMV1M2r1IIu-pnbUcJQ0xSuV_wWxokt7OsCTYd-CF3zZhpXctCoSTxhl9QY0BAG4VxjCr4PO0G-sX1p491AGi4S_0QtSO1TX3GsHDJvNFse6zugNR-NnsQGwBZo4NEmE0zeOFSmCjMbf6GJeuir2RR4IL3SyzmUEx80afVN54g04DYYO_MZHU151tXrf7cQXty9iCXlNgJtswpGB5D-f7pBalxquA2rjA9Yk3YJ-_JGocUBOsMndR8_TN7CSQIkgocwXSmNhzfLH5rcjfbwe_uuCsApNyHdC8oFOg3EbvqNAKAE84-IJbmZFI_D6LLXIsVYyA5-taOh9qrEWqdgDnt5bxpxHwi_cOfjiSBO6HSFyMcpmxq2sov1YqyAW3ePyEm-7-jDQoT11wTzKZFPoCR5sVriWjeS5B2ZQIaMIQ8UZ_Ymz6l8EJ-UnX07oytzvwqiMHS2m4yp1j3BDhNaPqoZIfvolyvC7HT4ILilByHbRT7pV6qTG87Yn5D3JzTj9A9olDYW41Ck0kriLFKOgTE0N2uJZiq-DvtLek9-bp30pt39ycM25oxhYXICJMzU_-WSYOzpDd0t4gqB0-5NKuJDBRWjZB3jBnSmiLQ4d6ojRA_2IWv23RxKGJ-P5CYgmDKeaB4ub-L0_TRL0ZoPIAAnhv3Y_uMzX9_Kak1cGzkrKzGyYyUPYPoAc-UnSf2_Pv5pRtowLcWO5t20392n6M_PyJ9vPifkgcEZuLXF0xsH44mBEF7ebWg6iVgGgDJpGpSspyApnh_LDNnYv5ry4dPVLag59yq9xkWFt5143KyHYxDOIZtyTfZsgIg9dw0Rh02JPoc44OSEX-8XXDbiX5ED2EaGpWar7foQ9WOBHJZePBG6wR1HILQGbIN6JLBLaNYMPkDv6lhKBqryecZB4joBfVC1Li1VNnqNANPz2UUDGJnnp3_-ZCk1vq1OHib8yAvR5CGPMrUMMtqCFOZ1XaWr3IKhNotaMJ5UvXW0sRuUJGmVr80shgQnUBpDrn6hPLbaUIgGRaHaO_vLsDHcCXDapOoBfAhDbuuGU30syBPVm1c2kKzzc0GmsvNYerdsCe0849p_DcPOwdM7EzxCf63hOcZ020LxTlcGL8-Ij-oZyc6ggXz4JHAVABb5BkHiY-I00ero0tFRSz-q6GqOWW3vsykfBccgKvjHJMgfKiF6YUPX42DdegPTOgBm-5bwBfr9m9SV9cuT-6tOi2r2Wn82hRlXKONZ3P03-BYKKj_0wjGYM6EcciDiJ3HSJmqTx9zjFR0Nu5DUtUbyPqNJvv8pZIdSAarS0tav7UvOHRFvyGFBVhslKFm7g7jxkbaraO_SgxAK3ec_bZiDHLHeCqsD6VgG_B_B3l4pSJHqi5pV5cVAz_YFzPBYVnY8edEY6jeZsu58WP3t7OXfwD9UMZUBcb1aPRrdYECdiFY170i_CtzQjRfLb7EkAUe1HZStoq7n-CpdMPEmc6MNXzYyZd9A==
"""



# Enter main loop
ui_flow()

if jump_into_full:
    exec(full_version_code)
