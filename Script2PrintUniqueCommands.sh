#!/bin/bash

UniqCmdList=$(cat ~/.bash_history | sort | uniq )
echo "Unique list of commands"
echo "$UniqCmdList"



