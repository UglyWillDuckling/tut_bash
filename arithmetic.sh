#!/usr/bin/env bash
#

# arithmetic in if conditional
i=0;
for word in one two three four; do ((i++));
  if ! (($i%2)); then
    echo $word $i;
  fi;
done

