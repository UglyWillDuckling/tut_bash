#!/bin/bash

#
### Show the effect of multiple repeater delimiters comparing between space and nonspace ones
#

IFS=:
read -r user pwhash uid gid gecos home shell <<< 'statd:x:105:65534::/var/lib/nfs:/bin/false'
echo "=$user= =$pwhash= =$uid= =$gid= =$gecos= =$home= =$shell="

IFS=$' \t\n'
read -r one two three <<< '   1      2  3'
echo "=$one= =$two= =$three="
