#!/usr/bin/env bash
# Program to understand the use of regular expresions in bash

identificationRegex='^[0-9]{10}$'
countryRegex='^EC|CO|US'
birthdayRegex='^19|20[0-8]{2}[1-12][1-31]'

echo -e "\nRegular Expresions\n"

read -p "Type and ID:" identification
read -p "Type your country [EC | CO | US]:" country
read -p "Type your birthday:" birthday

# identification Validation

if [[ $identification =~ $identificationRegex ]]; then
   echo "Valid identification"
else
   echo "Invalid identification"
fi

# Country Validation

if [[ $country =~ $countryRegex ]]; then
   echo "Valid country"
else
   echo "Invalid country"
fi

# Birthday Validation

if [[ $birthday =~ $birthdayRegex ]]; then
   echo "Valid birthday"
else
   echo "Invalid birthday"
fi