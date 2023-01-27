#!/usr/bin/env bash
# Program to create files and dirs

echo "Files and Dirs"

echo -e "\n"

if [ "$1" = "-d" ]; then
  mkdir -m 755 "$2"
  echo "Dir created successfully"
  ls -la "$2"
elif [ "$1" = "-f" ]; then
  touch "$2"
  echo "File created successfully"
  less "$2"
else
  echo "Does not exist option $1"
fi
