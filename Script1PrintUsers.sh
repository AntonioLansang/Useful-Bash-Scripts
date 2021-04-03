#!/bin/bash

UserList=$(cat /etc/passwd | cut -d':' -f1)
echo "User List: "
echo $UserList
