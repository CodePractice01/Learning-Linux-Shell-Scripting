#!/usr/bin/env bash

echo "The PATH is $PATH"
echo "THe terminal is $TERM"
echo "TH editor is $EDITOR"

if [ -z $EDITOR ]
then
    echo "The Editor variable is not set"
fi
