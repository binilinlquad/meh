#!/bin/bash

# PreRequirement
# curl, jq, and perl installed

# jq will return null if no value found 
JOKE=$(curl -s http://api.icndb.com/jokes/random/ | jq .value.joke | perl -MHTML::Entities -pe 'decode_entities($_);')
if test -z "$JOKE"; then
	echo "Chuck is close. Come again later!"
else
	echo $JOKE
fi

