#!/usr/bin/env bash
# File: guessinggame.sh

count=$(ls -1 | wc -l) # Count The File and directory 

function guess_C {        # function Starts 
    if [[ $1 -lt $2 ]]          
    then
	echo "Your Guess is Less then Orignal Number !"
    elif [[ $1 -gt $2 ]]
    then
	echo "Your Guess is More then Orignal Number!"
    else
	echo ""
	echo "Congratualations! You Find  right Number!"
    fi
}

while [[ $count -ne $guess ]]    # While loop...
do
    read -p "Please guess how many files are in the current directory? " guess
    # echo "You entered: $guess"
    echo $(guess_C $guess $count)
    echo ""
done

