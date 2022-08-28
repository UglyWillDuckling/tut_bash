#!/usr/bin/env bash

# Define list of arguments expected in the input
optstring=":a:b:c:"

A='start'
B='start'
C='start'
while getopts ${optstring} arg; do
  case ${arg} in
    a)
      A="${OPTARG}"
      ;;
    b)
      B="${OPTARG}"
      ;;
    c)
      C="${OPTARG}"
      ;;
    ?)
      echo "Invalid option: -${OPTARG}."
      echo
      usage
      ;;
  esac
done

echo A: $A
echo B: $B 
echo C: $C

