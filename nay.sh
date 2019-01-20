#!/bin/bash

# experiment to duplicate yes behavior. 
# This is not yes replacment.

ANSWER="n"
if [ -n $1 ]; then
	ANSWER=$1
fi

while [ -n "{read -u 1}" ]; do 
	echo "$ANSWER"
done
