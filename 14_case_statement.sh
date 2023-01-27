#!/usr/bin/env bash

option=""

echo -e "Case Statement\n"
read -r -p "Type an option from A to Z: " option
echo -e "\n"

case "$option" in
  "A") echo "Operation for Saving";;
  "B") echo "Operation for Deleting";;
  [C-E]) echo "Not implemented";;
  *) echo "Wrong";;
esac
