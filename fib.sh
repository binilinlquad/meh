#!/bin/sh


# read from file to array. Because mac deliver bsd bash, 
# we cannot use readarray or mapfile command
readInput() {
	INPUT=()
	while IFS= read -r line
	do 
    		INPUT+=("$line") 
	done< <(tail -n 2 "$1")
}

while true; do
	readInput "$1"
	sum=$(expr ${INPUT[0]} + ${INPUT[1]})
	if [ $? -eq 0 ]; then
		echo "$sum" >> "$1"
	else
		echo "expr cannot calculate ${INPUT[0]} + ${INPUT[1]}"
		break
	fi
done

