#!/usr/bin/env bash
echo -e "Rsync command for network\n"

host=""
user=""

read -r -p "Type the host: " host
read -r -p "Type the user: " user

echo -e "\nPacking and sending..."

rsync -avz "$(pwd)" "$user"@"$host":/home/user