#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=games --tuples-only -c"

echo "Enter your username:"
read username

search=$($PSQL "select * from games where username='$username'")
if [[ -z $search ]]
  then
    echo "Welcome, $username! It looks like this is your first time here."
    ADD=$($PSQL "insert into games(username) values('$username')")
  else
    read username b best b total <<< $search
    echo "Welcome back, $username! You have played $total games, and your best game took $best guesses."
  fi


num=$((1+RANDOM%1000));
num=557
echo "Guess the secret number between 1 and 1000:"
read guess
count=1

while [[ $num -ne $guess ]]
do
  if [[ ! $guess =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
  else
    ((count=count+1))
    if [[ $guess -gt $num ]]
    then 
      echo "It's lower than that, guess again:"
    else
      echo "It's higher than that, guess again:"
    fi
  fi
  read guess
done

echo "You guessed it in $count tries. The secret number was $num. Nice job!"
update=$($PSQL "update games set total=$total + 1 where username='$username'")
update=$($PSQL "update games set best=$count where username='$username' and best>$count")
