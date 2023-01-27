#!/bin/bash
# Program to check the variables declaration

option=5
name=Juan

echo "Option: $option and Name: $name"

# Exporting variables to be able for another processes 
export name
export option

# Calling next script
./2_variables_2.sh