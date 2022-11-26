#!/usr/bin/env bash

# This will squeeze all instances of multiple spaces found in txt
txt='Hi,   nice   to  meet            you!'
echo "$txt"  | tr -s ' '
