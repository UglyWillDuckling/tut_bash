#!/bin/bash 
# Absolute path this script is in, thus /home/user/bin
DIRNAME=$(dirname "$(readlink -f "$0")")
echo "$DIRNAME"
