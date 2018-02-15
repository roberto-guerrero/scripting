#!/bin/bash

echo "What is your name?"
read NAME

echo "Your Name: $NAME"
echo "Creating a file with your name..."

touch "${NAME}_file.txt"

