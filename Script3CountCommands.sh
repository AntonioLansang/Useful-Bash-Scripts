#!/bin/bash

#Grab all the unique Commands in bash_history
UniqCmdList=$(cat ~/.bash_history | sort | uniq -c)
echo "Unique list of commands"
echo "$UniqCmdList"
