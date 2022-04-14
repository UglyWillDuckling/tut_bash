#!/bin/bash

bikes=("motorcycle.svg" "honda.jpg")

for bike in ${bikes[@]}
do
  echo "${bike%.svg}"
done

