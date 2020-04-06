#!/usr/bin/env bash

COMPUTER=10
VALID=0


while [ $VALID -eq 0 ]
do

  read -p "Guess the number between 1 to 50:" GUESS

  if [ -z $GUESS ]
  then
    echo "no value, no clue"
    continue
  elif [[ ! $GUESS =~ ^[0-9]+$ ]]
   then
    echo "Hey I guess you don;t wrote a number,maybe something else ? [$GUESS]"
    continue
elif [[ $GUESS -eq $COMPUTER ]]
  then
    break
  elif [[ $GUESS -gt $COMPUTER ]]
    then
      echo "You're too high"
      continue
    else
      echo "You're too low"
      continue
fi
  VALID=1
done
echo "Hurray you guess the number - $GUESS "

exit 0
