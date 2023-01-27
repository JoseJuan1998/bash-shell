#!/usr/bin/env bash

echo -e "Packing all scripts\n"
tar -cvf bash-shell.tar -- *sh

sleep 2

echo -e "Compressing all scripts GZIP\n"
gzip -9 bash-shell.tar 

sleep 2

echo -e "Compressing all scripts PBZIP2\n"
gzip -9 bash-shell.tar 