#!/usr/bin/env bash
# Program to manage files

echo -e "Files Operations\n"

# create a new dir
mkdir -m 755 backupScripts

# copy the scrips to the new dir
cp -- *.sh backupScripts
ls -la backupScripts
sleep 5


# cmove de new dir to another
mv backupScripts "$HOME"
sleep 2

# delete the dir
cd "$HOME" || return
rm -rf backupScripts