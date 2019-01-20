#!/bin/bash

# experiment to duplicate yes behavior. 
# This is not yes replacment.

ANSWER="n"
if [ $# -eq 1 ]; then
	ANSWER=$1
fi

while true; do 
	echo "$ANSWER"
done
