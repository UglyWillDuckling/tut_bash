#!/usr/bin/env bash
echo 'vladimir sedlar' | sed -E 's/([a-z]*) ([a-z]*)/\2 \1/'
