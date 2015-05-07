#Description
Ever wanted to play single deck blackjack but did not know how? With blackjack advisor, you will never need to wonder about what to do next. This program will give you advice on which move would be most likely to give you the big WIN!
#How Do You Play
The user will need to answer the following three questions:
1. What is your first card?
2. What is your second card?
3. What is the dealer's card?

The user can answer by entering a number or first letter of the face card (J,Q,K,A).

The program will then give the user advice which move would be most beneficial.

#How Does It Do It
###General Idea
The user will be prompt to provide the following information:
+ Player's first card
+ Player's second card
+ Dealer's card

The program uses the information to run one of three methods determined the player's hand type:
+ Player cards are pairs
+ Player has a soft hand
+ Player has a hard hand

The program will then let the user know if they should:
+ Hit
+ Stay
+ Double or Hit
+ Double of Stay
+ Split

###Pair, Soft, or Hard
The program will run through the following steps to determine the player's hand type:
1. Comparing player's first card to player's second card will determine if the player has a pair.
2. An array was create with the player's cards. If the array contains an "A" then the player has a soft hand.
3. If neither of the conditions above exist, the player has a hard hand.


###Methods
Each method starts by running the player's card sum and dealer's card sum against a hash. If combination can not be found the program then runs multiply scenerios until one is met.
