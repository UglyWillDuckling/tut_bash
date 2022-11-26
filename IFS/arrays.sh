#!/bin/bash

IFS='+'

myArray=("1st item" "2nd item" "3rd item" "4th item")
printf 'Delimited by a +, Word -> %s\n' ${myArray[@]} # output is array items because first char in $IFS not contain space

myArray=("1st item" "2nd item" "3rd item" "4th item")
printf 'Delimited by a +, uses the * notation: Word -> %s\n' "${myArray[*]}" # use the full array as one word with first char in $IFS as delimeter

myArray=("1st item" "2nd item" "3rd item" "4th item")
printf 'Delimited by a +, uses @ notation and double quoted: Word -> %s\n' "${myArray[@]}" # use arrays entries, because array variable is quoted

# set IFS to 'e' char
IFS='e'

myArray=("1st item" "2nd item" "3rd item" "4th item")
printf 'Delimited by e, no quotes: Word -> %s\n' ${myArray[@]} # output is array items with 'e' char as delimeter

printf 'Delimited by e, with quotes: Word -> %s\n' "${myArray[@]}"

# set IFS to default value
unset IFS
