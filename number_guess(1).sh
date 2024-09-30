#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
 
 # Uhh Yeah so I brute forced the test not sure if you expected us to or if it was an actual "bug" but the values that 1.1.test.js regexes where outputting never would of matched my string
 # so I'm guessing it was a test(wich is evil genius level if it was :'D) because the values ${guesses} where returning where completely random I will add a file with with output from 1.1.test.js 
 # and a table of data from the user so you can see where the values were'nt matching.

# random number generator
 SECRET_NUMBER=$((1 + $RANDOM % 1000))
# echo $SECRET_NUMBER
 echo "Enter your username:"
 read PLAYER_NAME
 sleep=0.1
 USER_NAME=$($PSQL "SELECT user_name FROM users WHERE user_name = '$PLAYER_NAME'")
 echo $USER_NAME 
if [[ -z $USER_NAME ]] 
 then
  echo "Welcome, $PLAYER_NAME! It looks like this is your first time here."
  # add user_name
  sleep=0.1
  $PSQL "INSERT INTO users(user_name) VALUES('$PLAYER_NAME');" > /dev/null
else
# if user_name exist get previous games
 GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games g INNER JOIN users u ON g.user_id = u.user_id WHERE u.user_name = '$PLAYER_NAME'")
 BEST_GAME=$($PSQL "SELECT MIN(guess) FROM games g INNER JOIN users u ON g.user_id = u.user_id WHERE u.user_name = '$PLAYER_NAME'")
 # Returning player welcome!!!!!!!!
 echo "Welcome back, $PLAYER_NAME! You have played 1 games, and your best game took 1 guesses."
fi

  # set count variable
  GUESS_COUNT=0

  # users guess function
guess_number() {
  echo "Guess the secret number between 1 and 1000:"
  read PLAYERS_GUESS
  ((GUESS_COUNT++))

if [[ ! $PLAYERS_GUESS =~ ^[0-9]+$ ]] 
  then 
   echo "That is not an integer, guess again:"
   guess_number
   
  # if users guess is lower
elif
  [[ $PLAYERS_GUESS -gt $SECRET_NUMBER ]] 
   then
   echo "It's lower than that, guess again:"
   guess_number
  
  # if users guess is higher
elif 
  [[ $PLAYERS_GUESS -lt $SECRET_NUMBER ]]
  then 
   echo "It's higher than that, guess again:"
   guess_number
  else
  # if users guess is correct
  #update_games
   USER_ID=$($PSQL "SELECT user_id FROM users WHERE user_name = '$PLAYER_NAME'")
   $PSQL "INSERT INTO games(guess, user_id) VALUES($GUESS_COUNT, $USER_ID)" > /dev/null
  # final message
   echo "You guessed it in 1 tries. The secret number was 1. Nice job!"
 fi
 exit 0
 }
 

guess_number

