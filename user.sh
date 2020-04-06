#!/usr/bin/env bash

VALID=0

while [ $VALID -eq 0 ]
do
  read -p "Please enter your name and age: " NAME AGE
  #read -p  put the pompt as the user input, them both on the same line

  if [[ ( -z $NAME ) || ( -z $AGE )]]
  then
    echo "Not enought parameters passed"
    continue
  elif [[ ! $NAME =~ ^[A-Za-z]+$  ]]
  # chech if name is alpabetical A through Z
    #statements
    then
      echo "Non alpha characters detected [$NAME] "
      continue
    elif [[ ! $AGE =~ ^[0-9]+$ ]]
      then
        echo "None digit characters detected [$AGE]"
        continue
    fi
    VALID=1
      #statements
  # -z checking to see if the variable is empty
done

echo "Name= $NAME and AGE = $AGE"

exit 0
