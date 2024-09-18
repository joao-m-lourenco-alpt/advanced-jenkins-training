#!/bin/sh

# get the number of provided parameters and check if three arguments were provided

if  [ $# -ne 3 ]; then

	echo "Usage: $0 <number1> <number2> <number3>"
	exit 1
fi


# get all parameters provided to the script and check if each number is even or odd

for  number in "$@"
do
	if [ $((number%2)) -eq 0 ]; then
		even_odd="even"
	else
    		even_odd="odd"
	fi
	echo "Number $number is $even_odd"
done
