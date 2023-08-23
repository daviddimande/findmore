#!/bin/bash

# Author: David Dimande
# Version 0.1

findByUser () {
# find all files owned by root user located in / dir
echo "Enter the username to find files"
read username
find / -user $username -type f 2> /dev/null
}

findByPerm () {
# find all files owned by root user with 777 permission mode
echo "Enter username to find files"
read username
echo "Enter permission mode using octal base"
read permission
find / -user $username -perm $permission 2> /dev/null
}

findByUID () {
# find files with specif UID and permission mode
echo "Enter  the UID to find files"
read uid
echo "Enter permission mode using octal base"
read permission
find / -uid $uid -perm $permission 2> /dev/null
}