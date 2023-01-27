#!/usr/bin/env bash
# Program to validate entry data

option=0
backupName=""
key=""

echo -e "\nValidating data\n"
read -r -n1 -p"Type an option:" option
echo -e "\n"
read -r -n10 -p "Type a backup name:" backupName
echo -e "\n"
read -r -s -p "Type a key:" key
echo -e "\n"
echo "Option $option, Backup name $backupName, Key $key"
