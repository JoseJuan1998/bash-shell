#!/usr/bin/env bash

echo -e "Read a File\n"
cat "$1"

echo -e "\n\nSave values into a variable\n"

valueCat=$(cat "$1")

echo "$valueCat"

# IFS (Internal File Separator)

echo -e "\n\nRead files line by line"

while IFS= read -r linea
do
  echo "$linea"
done < "$1"