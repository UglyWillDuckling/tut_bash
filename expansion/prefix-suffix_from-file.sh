#!/bin/bash

cat motor.txt
for bike in `cat motor.txt`
do
  bike="${bike%.svg}"
  bike="${bike%.jpg}"
  echo "$bike"
done

