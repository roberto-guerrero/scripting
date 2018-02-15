#!/bin/bash

NUM=0

#Validate if empty and is Integer, otherwise use 0 as default
if [ $# -eq 0 ]
then
    echo "Input is empty. Setting 0 as default."
else
    if [[ $1 =~ ^[-+]?[0-9]+$ ]]
    then
		NUM=$1
    else
		echo "Input must be Integer. Setting 0 as default."
    fi
fi

#Validating if greater than 100
if [ $NUM -gt 100 ]
then
    echo "expression as True."
else
    echo "expression as False."
fi

