#!/usr/bin/env bash
# Program for Conditional Expressions

age=0
country=""
filesPath=""

read -r -p "Type your age: " age
read -r -p "Type your country: " country
read -r -p "Type the path of your files: " filesPath

echo -e "\nExpressions for Numbers"
if [ "$age" -lt 10 ]; then
  echo "The user is a kid"
elif [ "$age" -ge 10 ] && [ "$age" -le 17 ]; then
  echo "The user is a teenager"
else
  echo "The user is an adult"
fi

echo -e "\nExpressions for Strings"
if [ "$country" = "EU" ]; then
  echo "The user is from United States"
elif [ "$country" = "MX" ]; then
  echo "The user is from Mexico"
else
  echo "The user from another country"
fi

echo -e "\nExpressions for Files"
if [ -d "$filesPath" ]; then
  echo "The path is a directory"
elif [ -f "$filesPath" ]; then
  echo "The path is a file"
else
  echo "The path does not exist"
fi
