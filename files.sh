#!/bin/bash

INPUT="input"
OUTPUT="output"


#Delete INPUT AND OUTPUT FOLDERS
function clean {
    if [ -d $INPUT ]
    then
        echo "Removing input folder."
        rm -rf $INPUT
    fi

    if [ -d $OUTPUT ]
    then
        echo "Removing output folder."
        rm -rf $OUTPUT
    fi
}


function createInput {
    mkdir input
    cd input
    echo "Empty input folder"
    ls -l

    echo "Adding test files"
    for i in 1 2 3 4 5
    do
        touch "File_$i.txt"
    done

    echo "Files generated."
    ls -l

    cd ..
}


function createOutput {
    echo "Creating output folder."
    mkdir output
    ls -l
}


function copyFiles {
    cp $INPUT/* $OUTPUT
    cd output
    ls -l
    echo "Files copied to Output folder."
    cd ..
}

#Main
clean   #Call clean method

createInput   #Create new folder

createOutput   #Create output folder

copyFiles   #Copy files from input to output

clean   #Call clean method

