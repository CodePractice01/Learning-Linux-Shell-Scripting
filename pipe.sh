#!/usr/bin/env bash

FILES=`ls -1 | sort -r |head -3`
#ls -1 runs the ls command and limits the columns to one
# sort -r  is sort method -- linux has sort method in
#    the -r says to reverse te sort order
#head -3 -- take the first three results

COUNT=1

for FILE in $FILES
do
  echo "File #$COUNT = $FILE"
  ((COUNT++))
done

exit 0
