import java.util.*;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import java.security.*;
class VaultDoor8Solution {
 public static void main(String args[]) {
  char[] expected = {
   0xF4, 0xC0, 0x97, 0xF0, 0x77, 0x97, 0xC0, 0xE4, 0xF0, 0x77, 0xA4, 0xD0,
   0xC5, 0x77, 0xF4, 0x86, 0xD0, 0xA5, 0x45, 0x96, 0x27, 0xB5, 0x77, 0xE0,
   0x95, 0xF1, 0xE1, 0xE0, 0xA4, 0xC0, 0x94, 0xA4
  };
  System.out.println(String.valueOf(unscramble(String.valueOf(expected))));
 }
 static public char[] unscramble(String input) {
  char[] a = input.toCharArray();
  for (int b = 0; b < a.length; b++) {
   char c = a[b];
   c = switchBits(c, 6, 7);
   c = switchBits(c, 2, 5);
   c = switchBits(c, 3, 4);
   c = switchBits(c, 0, 1);
   c = switchBits(c, 4, 7);
   c = switchBits(c, 5, 6);
   c = switchBits(c, 0, 3);
   c = switchBits(c, 1, 2);
   a[b] = c;
  }
  return a;
 }
 
 static public char switchBits(char c, int p1, int p2) {
  char mask1 = (char)(1 << p1);
  char mask2 = (char)(1 << p2);
  char bit1 = (char)(c & mask1);
  char bit2 = (char)(c & mask2);
  char rest = (char)(c & ~(mask1 | mask2));
  char shift = (char)(p2 - p1);
  char result = (char)((bit1 << shift) | (bit2 >> shift) | rest);
  return result;
 }
}