#!/usr/bin/env bash

# Program to make a postgres utility menu using functions

option=0

function installPostgres() {
  echo "Installing Postgres..."
  sleep 3
}

function uninstallPostgres() {
  echo "Uninstalling Postgres..."
  sleep 3
}

function backupPostgres() {
  echo "Making a Backup..."
  sleep 3
}

function restoreBackupPostgres() {
  echo "Restoring..."
  sleep 3
}

function closeMenu() {
  echo "Closing..."
  exit 0
}

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
  echo "4. Restore Backup"
  echo "5. Close"

  echo -e "\n"

  # read data
  read -r -n1 -p "Type your option (1-5): " option

  echo -e "\n"

  # validate option
  case $option in
  1)
    installPostgres
    ;;
  2)
    uninstallPostgres
    ;;
  3)
    backupPostgres
    ;;
  4)
    restoreBackupPostgres
    ;;
  5)
    closeMenu
    ;;
  *)
    echo "Invalid option"
    ;;
  esac
done
