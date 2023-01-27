#!/usr/bin/env bash
# Program to understand arrays

numsArray=(1 2 3 4 5 6)
stringsArray=(Juan Pedro Luis Alejandro)
rangeArray=({A..Z} {10..20})

# Print all values
echo "Numbers: ${numsArray[*]}"
echo "Names: ${stringsArray[*]}"
echo "Range: ${rangeArray[*]}"

# Print lenght
echo "Size Numbers: ${#numsArray[*]}"
echo "Size Names: ${#stringsArray[*]}"
echo "Size Range: ${#rangeArray[*]}"

# Add and remove element
numsArray[7]=7
unset "numsArray[0]"
echo "New Numbers: ${numsArray[*]}"
echo "Size New Numbers: ${#numsArray[*]}"
