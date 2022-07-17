#!/bin/bash

# example of how getopts works


output_file="response.out"


while getopts ":a:b:c" flag;do
    echo "flag -$flag, Argument $OPTARG";
done

