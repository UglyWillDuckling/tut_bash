#!/bin/bash

IFS=
read -r a b c <<< 'the plain gold ring'
echo "=$a="

IFS=$' \t\n'
read -r a b c <<< 'the plain gold ring'
echo "=$c="

IFS=$' \t\n'
read -r a b c <<< 'the    plain gold      ring'
echo "=$a= =$b= =$c="

