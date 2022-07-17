#!/bin/bash

aflag=
bflag=
cflag=
 
while getopts abc: name
do
            echo $name
           #  case $name in
           #  a)     aflag=1;;
           #  b)     bflag=1
           #                bval="$OPTARG";;
           #  c) cflag="$OPTARG";;
           #  ?)     printf "Usage: %s: [-a] [-b value] [-c value] args\n" $0
           #                exit 2;;
           # esac
done
 
if [ ! -z "$aflag" ]; then
           printf "Option -a specified\n"
fi
 
if [ ! -z "$bflag" ]; then
           printf 'Option -b "%s" specified\n' "$bval"
fi

if [[ -n "$cflag" ]]; then
            echo "Option -c specified"
            echo "C value is $cflag"
fi
 
shift $(($OPTIND -1))
printf "Remaining arguments are: %s\n" "$*"

