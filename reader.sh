#!/usr/bin/env bash

COUNT=1

while IFS='' read -r LINE
#IFS is the interner field separator it tells LINUX
#how to parts the field of the line we are reading

# -r  -- tells: do not allow to bachslash to escape anu characters
do
  echo "LINE $COUNT: $LINE"
  ((COUNT++))
done < "$1"

exit 0
