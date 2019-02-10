#!/bin/bash
export AUTH
export FILE

[[ ! -f $FILE ]] &while IFS='' read -r Username || [[ -n "$Username" ]]
do
  python3 gitrax.py -epm -t $AUTH "$Username"
done < $FILE > ./output.txt