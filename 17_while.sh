#!/usr/bin/env bash
# Program for while

num=1
add=1

while [ $num -ne 10 ]; do
  echo "Number: $num"
  
 ((num += 1))
done
