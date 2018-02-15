#!/bin/bash

#Read file and print in console

FILE_INPUT="names.txt"
FILE_OUTPUT="output.txt"

while read f
do
    echo $f
done < $FILE_INPUT > $FILE_OUTPUT