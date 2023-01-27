#!/usr/bin/env bash

echo "Challenge 3"

read -r -n1 -p "Type a number (1-5): " number
echo -e "\n"

if [ "$number" -lt 3 ]; then
   echo "Youre number is 1 or 2"
elif [ "$number" -lt 5 ]; then
   echo "Youre number is 3 or 4"
else
   echo "Youre number is 5 or higher"
fi