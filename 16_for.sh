#!/usr/bin/env bash
# Program to undestarn the behaviour of for

function iterateNumbers () {
  nums=(1 2 3 4 5 6)

  echo "Iterating Numbers"

  for num in "${nums[@]}"; do
    echo "Number: $num"
  done 
}

function iterateStrings () {
  echo -e "\nIterating Names"

  for name in Juan Pedro Alejandro Fernando; do
    echo "Name: $name"
  done 
}

function iterateFiles () {
  echo -e "\nIterating Files"

  for file in *; do
    echo "File: $file"
  done 
}

function iterateCommands () {
  echo -e "\nIterating Commands"

  for file in $(ls -a *.sh); do
   [[ -e $file ]] || break
    echo "Command: $file"
  done 
}

function iterateTraditional () {
  echo -e "\nIterating Traditional"

  for((i=0;i<10;i++)); do
    echo "Index: $i"
  done
  
}

iterateNumbers
iterateStrings
iterateFiles
iterateCommands
iterateTraditional