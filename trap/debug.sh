#!/bin/bash

trap 'read -p "$BASH_SOURCE:$LINENO: $BASH_COMMAND"' DEBUG

echo 3

ls
ls -l
echo Hi
echo 44
echo Hi again
echo foo
echo bar
