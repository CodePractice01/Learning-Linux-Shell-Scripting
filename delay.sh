#!/usr/bin/env bash

#variable to hold the time to our delay
DELAY=$1

if [ -z $DELAY ]
then
  echo "You must supply a delay"
  exit 1
fi
echo "Going to sleep to $DELAY seconds"

sleep $DELAY

echo "We are aware now"

exit 0
