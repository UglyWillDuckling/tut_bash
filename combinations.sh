#!/bin/bash


word=$1
combinations=(" ")

for i in $(seq 1 ${#word})
do
  letter=${word:i-1:1}
  for str in ${combinations[@]}; do
    # example: z,abc => zabc, azbc, abzc, abcz
    len=${#str}

    for j in $(seq 0 $len); do
      # example abc => []abc, a[]bc,ab[]c,abc[]
      first_part=${str:0:$j}
      second_part=${str:$j}

      # a, b, c => a, ab
      new_combo="$first_part$letter$second_part"

      combinations+=($new_combo)
    done
  done

  combinations+=($letter)
done

for combo in "${combinations[@]}"
do
  echo $combo
done

