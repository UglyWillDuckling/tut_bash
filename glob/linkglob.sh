#!/bin/bash

trap '(read -p "[$BASH_SOURCE:$LINENO] $BASH_COMMAND")' DEBUG

ls 

echo 3
