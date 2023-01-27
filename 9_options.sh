#!/usr/bin/env bash
# Program to understand the options within or without params

echo "Options"
echo "Option '$1' received"
echo "Option '$2' received"
echo "Options '$*' received"

echo -e "\n"

echo "Retrieving values"

while [ -n "$1" ]; do
  case "$1" in
  -a)
    echo "-a option used"
    ;;
  -b)
    echo "-b option used"
    ;;
  -c)
    echo "-c option used"
    ;;
  *)
    echo "default (none of above)"
    ;;
  esac
  shift
done
