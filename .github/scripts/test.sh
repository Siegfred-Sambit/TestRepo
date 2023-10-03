#!/bin/bash
set -e -f

BASE="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
FOLDER="$( cd "$BASE/../.." >/dev/null 2>&1 && pwd )"
echo $FOLDER
LIST_COMMANDS=$FOLDER/like.txt

#COMMAND_LIST=$FOLDER/command_list.txt
#export TG_ACTION="plan"

#clean() {
    #rm -f COMMAND_LIST
#}

#append_command() {
    #local command="$1"
    #echo "$command" >> $COMMAND_LIST
#}

execute_command() {
    while IFS= read -r command; do
        echo "Executing command: $command"
        $command
    done < like.txt
}

==============================================
echo "Start plan process"

echo "-> Generate all plans"
execute_command
==============================================
