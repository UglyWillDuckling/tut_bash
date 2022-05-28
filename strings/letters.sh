#!/bin/bash

read -p "Please enter a word: " word

for i in $(seq 1 ${#word})
do
 echo "Letter $i: ${word:i-1:1}"
done
