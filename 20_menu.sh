#!/usr/bin/env bash
# Program to make a postgres utility menu

option=0

while :; do
  # clear screen
  clear

  # menu
  echo "---------------------------------"
  echo "PGUTIL - Program Utility Postgres"
  echo "---------------------------------"
  echo "             BEGINING            "
  echo "---------------------------------"
   echo -e "\n"
  echo "1. Install Postgres"
  echo "2. Uninstall Postgres"
  echo "3. Database Backup"
  echo "4. Rest Backup"
  echo "5. Close"

  echo -e "\n"

  # read data
  read -r -n1 -p "Type your option (1-5): " option

  echo -e "\n"

  # validate option
  case $option in
  1)
    echo "Installing Postgres..."
    sleep 3
    ;;
  2)
    echo "Uninstalling Postgres..."
    sleep 3
    ;;
  3)
    echo "Making a Backup..."
    sleep 3
    ;;
  4)
    echo "Resting a Backup..."
    sleep 3
    ;;
  5)
    echo "Closing..."
    exit 0
    ;;
  *)
    echo "Invalid option"
    ;;
  esac
done
