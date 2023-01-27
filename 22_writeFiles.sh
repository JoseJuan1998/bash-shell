#!/usr/bin/env bash
# Program to write inside of a file without opening it

echo -e "Write in a file\n"

echo "$2" >> "echo$1"

# multiline

cat <<EOM >>"cat$1"
$2
EOM