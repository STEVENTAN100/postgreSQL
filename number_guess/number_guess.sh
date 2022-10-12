#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo -e "Enter your username:"
read USERNAME
USER_ID=$($PSQL "select user_id from users where username='$USERNAME'")
GAMES_PLAYED=$($PSQL "select count(*) from users inner join games using(user_id) where username='$USERNAME'")
BEST_GAME=$($PSQL "select min(time) from users inner join games using(user_id) where username='$USERNAME'")
# if not found
if [[ -z $USER_ID ]]
then
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
  # insert username
  INSERT_USERNAME=$($PSQL "insert into users(username) values('$USERNAME')")
  USER_ID=$($PSQL "select user_id from users where username='$USERNAME'")
else
  # find games_played and best_game
  
  
  echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# begin number guess
RANDOM_NUMBER=$(($RANDOM % 1000+1))
echo -e "\nGuess the secret number between 1 and 1000:"
read GUESS_NUMBER
GUESS_TIME=1
while [[ $GUESS_NUMBER -ne $RANDOM_NUMBER ]]
do
  # if not an integer
  if [[ ! $GUESS_NUMBER =~ ^[0-9]+$ ]]
  then
    echo -e "\nThat is not an integer, guess again:"
  else
  # tell the user the guess number is higher or lower
    if [[ $GUESS_NUMBER -lt $RANDOM_NUMBER ]]
    then
      echo -e "\nIt's lower than that, guess again:"
    else
      echo -e "\nIt's higher than that, guess again:"
    fi
  fi
  read GUESS_NUMBER
  ((GUESS_TIME++))
done
# add game into games
INSERT_GUESS_TIME=$($PSQL "insert into games(user_id,time) values($USER_ID,$GUESS_TIME)")
echo -e "\nYou guessed it in $GUESS_TIME tries. The secret number was $RANDOM_NUMBER. Nice job!"
