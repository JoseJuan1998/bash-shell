#!/usr/bin/env bash

# !/bin/bash
for file in $(ls -a *.sh); do
  echo "--------------- $file ---------------------"
  while read -r linea; do
    echo"$linea"
  done < "$file"
done
