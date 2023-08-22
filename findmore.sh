#!/bin/bash

# Author: David Dimande
# Version 0.1

# find all files owned by root user located in / dir

find / -user root -type f 2> /dev/null

# find all files owned by root user with 777 permission mode

find / -user root -perm 777