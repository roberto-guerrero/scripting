#!/bin/bash
HELLO=Hello

function helloFn {
	local HELLO=World
	echo $HELLO #Printing local variable
}

#Printing global variable
echo $HELLO

#Calling hello function
helloFn

#Printing global variable
echo $HELLO
