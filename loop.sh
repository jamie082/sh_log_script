#!/bin/bash

# bash script to see how many files (.gz) are inside /var/log then return the awk value
# count number of lines in a directory
# > lsb_release -a

# the command - find /var/messages -type f | wc -l
read -p "Enter file name for /var/log: " file_name
exec lsb_release -a
FIND_CMD=$(find /var/log -type f -iname file_name | wc -l) # from read command
echo $FIND_CMD
