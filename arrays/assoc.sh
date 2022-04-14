#!/bin/bash

declare -A aa 

aa=([hello]=world [ab]=cd ["key with space"]="hello world")

echo ${aa[hello]}
# Out: world

echo "${!aa[@]}"

echo "${aa[@]}"
#Out: world cd hello world

# for key in "${!aa[@]}"; do
#     echo "Key:   ${key}"
#     echo "Value: ${aa[$key]}"
# done


echo "${#aa[@]}"
# Out: 3

echo "Unset the hello key"
unset aa[hello]

echo "value of hello is " ${aa[hello]}
echo "${aa[@]}"


for key in "${!aa[@]}"; do
    echo "Key:   ${key}"
    echo "Value: ${aa[$key]}"
done

