#!/bin/bash

find app/ lib/ -iname '*.rb' | xargs grep -h '^[[:space:]]*class\|module\b' | sed 's/^[[:space:]]*//' | cut -d ' ' -f 2 | while read class; do echo `grep -rl "\b$class\b" app lib --include="*.rb" | wc -l` $class; done | sort -n

