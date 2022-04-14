#!/bin/bash
echo "Do you want to confirm?"
read answer
case $answer in
[Yy]* )  echo "confirmed.";;
[Nn]* )  echo "Not confirmed.";;
*) echo "Try again.";;
esac

