#!/usr/bin/env bash


GetFiles()
{
  FILES=`ls -1 | sort | head -10`

#  COUNT=1

#  for FILE_C in $FILES
#  do
#    echo "File number $COUNT---$FILE_C"
#    ((COUNT++))
#  done
}

ShowFiles()
{
  local COUNT=1
  for FILE in $@
  do
    echo "show file $COUNT = $FILE"
    ((COUNT++))
  done
}

GetFiles

ShowFiles $FILES

exit 0
