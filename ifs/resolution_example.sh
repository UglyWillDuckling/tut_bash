#!/usr/bin/env bash

res_array=()
resolutions="640x480,320x240"
xIFS=$IFS
IFS=','
for res in $resolutions; do
    xxIFS=$IFS
    IFS='x'
    set -- $res
    width=$1
    height=$2

    # handle width and height
    res_array+=("$width"x"$height")
    IFS=$xxIFS
done;
IFS=$xIFS

echo "${res_array[@]}"
