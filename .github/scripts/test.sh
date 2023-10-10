#!/bin/bash
set -e -f

#BASE="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
#FOLDER="$( cd "$BASE/../.." >/dev/null 2>&1 && pwd )"
#echo $FOLDER
#LIST_COMMANDS=$FOLDER/like.txt

#COMMAND_LIST=$FOLDER/command_list.txt
#export TG_ACTION="plan"

#clean() {
    #rm -f COMMAND_LIST
#}

#append_command() {
    #local command="$1"
    #echo "$command" >> $COMMAND_LIST
#}

app_command() {
    #local command="$1"
    for file in $changed_files; do
        echo $file
    done
}

==============================================
echo "Start plan process"
app_command
