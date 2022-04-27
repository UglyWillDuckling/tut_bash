#!/bin/bash

read -p "Enter first string: " VAR1
read -p "Enter second string: " VAR2

if [[ "$VAR1" == "$VAR2" ]]; then
    echo "Strings are equal."
else
    echo "Strings are not equal."
fi

[[ "string1" == "string2" ]] && echo "Equal" || echo "Not equal"

VAR='GNU/Linux is an operating system'
if [[ $VAR == *"Linux"* ]]; then
  echo "Linux is in the House"
fi

VAR='GNU/Linux is an operating system'
if [[ $VAR =~ .*Linux.* ]]; then
  echo "Linux is here yet Again"
fi

VAR=''
if [[ -z $VAR ]]; then
  echo "String is empty."
fi

VAR='Linuxize'
if [[ -n $VAR ]]; then
  echo "String is not empty."
fi

