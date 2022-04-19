#!/bin/bash

VAR='GNU/Linux is an operating system'

if [[ $VAR =~ ^[A-Z/a-z].*Linux.*m$ ]]; then
  echo "Linux is here yet Again"
fi

