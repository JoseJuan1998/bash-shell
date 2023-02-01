#!/usr/bin/env bash

# Program to make a postgres utility menu using functions

option=0

function installPostgres() {
  echo -e "Verifying Postgres...\n"
  sleep 1
  verifyInstall=$(which psql)
  if [ $? -eq 0 ]; then
    echo "Alredy installed"
    sleep 1
  else
    read -r -s -p "Type your sudo password: " sudoPass
    read -r -s -p "Type your psql password: " psqlPass

    echo "$sudoPass" | sudo -S apt update
    echo "$sudoPass" | sudo -S apt-get -y install postgresql postgresql-contrib

    sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD '${psqlPass}'"

    echo "$sudoPass" | sudo -S systemctl enable postgresql.service
    echo "$sudoPass" | sudo -S systemctl start postgresql.service
  fi

  read -n1 -s -r -p "Enter to continue..."
}

function uninstallPostgres() {
  echo -e "Verifying Postgres...\n"
  sleep 1
  verifyInstall=$(which psql)
  if [ $? -ne 0 ]; then
    echo "Alredy desinstalled"
    sleep 1
  else
    read -r -s -p "Type your sudo password: " sudoPass

    echo "$sudoPass" | sudo -S systemctl stop postgresql.service
    echo "$sudoPass" | sudo -S pg_dropcluster --stop 12
    echo "$sudoPass" | sudo -S apt-get -y --purge remove postgresql\*
    echo "$sudoPass" | sudo -S userdel -r postgres
    echo "$sudoPass" | sudo -S groupdel -r postgres
  fi

  read -n1 -s -r -p "Enter to continue..."
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
