#!/usr/bin/env bash

#OBS
#ps -a afisarea id-ului de procese
#se deschide o noua fereastra in terminal
# se intereaza comadna nano --editor default LINUX
# se revine la fereastra de terminal initiala si se apeleaza fisierul
# ./proc.sh 4530 --este id ptr nano
#se revine in terminanul nr 2 si CTRL+X ptr a iesi din nano


STATUS=0

if [ -z $1 ]
then
  echo "Please supply a PID-process id"
  exit 1
fi

echo "Watching PID=$1"


while [ $STATUS -eq 0 ]
do
  ps $1 > /dev/null
  # > /dev/null -- send the result to nowheree
  STATUS=$?
  # $? this pick up the status of the last command ran
  #let know if ps command is succesfull....if it's ok then the result will be zero
done

echo "Process $1 has terminated"

exit 0
