#!/bin/bash
#First arg: path to where file should be created (including file name)
#Second arg options: 
# ins (will open newly made file in vim)
# view (will print the file contents to the terminal and not open in vim)
# nv or no arg (will give a sucessfully created message but doesn't show file contents)
touch "$1"
xclip -o > "$1"
ARG2=${2:-nv}
if [ $ARG2 = 'ins' ]
then
	vim "$1"
elif [ $ARG2 = 'view' ]
then
	less -FX "$1"
elif [ $ARG2 = 'nv' ]
then
	echo Input file created.
else
	echo Unknown second arguement.	
fi
