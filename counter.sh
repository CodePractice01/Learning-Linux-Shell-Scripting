#!/usr/bin/env bash

NUMBER=$1
COUNT=0

while [ $COUNT -lt $NUMBER ]
do
  echo "number is $COUNT"
  ((COUNT++))
done

echo "Loop Finished"
exit 0
