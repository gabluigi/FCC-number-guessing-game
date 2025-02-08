#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=number_guess --no-align --tuples-only -c"
SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))

echo "Enter your username:"
read USERNAME

RETURNING_USER=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")

if [[ -z $RETURNING_USER ]]
then
  INSERTED_USER=$($PSQL "INSERT INTO users (username) VALUES ('$USERNAME')")
  RETURNING_USER=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")  
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id = $RETURNING_USER")
  BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games WHERE user_id = $RETURNING_USER")
  
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# Grab user_id
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")

echo "Guess the secret number between 1 and 1000:"
TRIES=0

while true
do
  read GUESS
  
  # Validate if input is an integer
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    continue  # Restart loop without increasing tries
  fi

  ((TRIES++))  # Increment tries only if input is valid

  if [[ $GUESS -gt $SECRET_NUMBER ]]
  then 
    echo "It's lower than that, guess again:"
  elif [[ $GUESS -lt $SECRET_NUMBER ]]
  then
    echo "It's higher than that, guess again:"
  else
    echo "You guessed it in $TRIES tries. The secret number was $SECRET_NUMBER. Nice job!"
    break  # Correct guess, exit loop
  fi
done

# Insert game record into database
INSERTED_GAME=$($PSQL "INSERT INTO games (user_id, guesses) VALUES ($USER_ID, $TRIES)")
