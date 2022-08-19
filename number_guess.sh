#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only -c"

NUMBER_TO_GUESS=$((RANDOM % 1000 + 1))

echo -e "\nEnter your username:"
read PLAYER_NAME

GET_PLAYER_RESULT=$($PSQL "SELECT games_played, best_game FROM players WHERE player='$PLAYER_NAME'")

if [[ -z $GET_PLAYER_RESULT ]]
then
  echo -e "\nWelcome, $PLAYER_NAME! It looks like this is your first time here."
  PLAYER_CREATION_RESULT=$($PSQL "INSERT INTO players(player) VALUES('$PLAYER_NAME')")
  GAMES_PLAYED=0
  BEST_GAME=-1

else
  IFS=" | " read GAMES_PLAYED BEST_GAME <<< $GET_PLAYER_RESULT  
  echo -e "\nWelcome back, $PLAYER_NAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."

fi

VICTORY=0
ROUNDS=0

echo -e "\nGuess the secret number between 1 and 1000:"

while (( VICTORY != 1 ))
do
   
read NUMBER
let ROUNDS++

if [[  ! $NUMBER =~ ^[0-9]+$ ]]
  then
  echo -e "\nThat is not an integer, guess again:"
    
else
  if (( NUMBER > NUMBER_TO_GUESS ))
  then
    echo -e "\nIt's lower than that, guess again:"
  
  elif (( NUMBER < NUMBER_TO_GUESS ))
    then
      echo -e "\nIt's greater than that, guess again:"
  
  else
    VICTORY=1
    echo "You guessed it in $ROUNDS tries. The secret number was $NUMBER_TO_GUESS. Nice job!"
  
  fi
fi
done

let GAMES_PLAYED++

if (( BEST_GAME == -1 )) || (( ROUNDS < BEST_GAME ))
then
  let BEST_GAME=ROUNDS
fi

UPDATE_RESULTS_RESULT=$($PSQL "UPDATE players SET games_played=$GAMES_PLAYED, best_game=$BEST_GAME WHERE player='$PLAYER_NAME'")
