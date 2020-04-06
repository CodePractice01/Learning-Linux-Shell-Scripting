#!/usr/bin/env bash

COUNT=1

while IFS='' read -r LINE
#LINE is going to hold each line of text as we read it in
do
  echo "Aloha $LINE > $COUNT"
#  if [ $COUNT = '4' ]
  if [ $COUNT -ge 3 ]
    then
      break
  #  else
  #    {
  #      echo "Aloha $LINE > $COUNT"
  #    }
    fi

  ((COUNT++))
done < "$1"
#done < "$1" to get the first parameter

exit 0
