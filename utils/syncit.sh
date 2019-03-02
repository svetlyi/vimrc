#!/bin/bash
echo "Maximum size is 1G!!!111"

if [ -d "$1" ]; then
    excludeFile="$1/exclude-list.txt" # exclude files and folders from exclude-list.txt
    if [ -e "$excludeFile" ]; then
        echo "Exclude file exists"
        rsync -rtkv --max-size=1g --progress --exclude-from $excludeFile --no-links $1 $2
    else
        echo "Exclude file does not exists"
        rsync -rtkv --max-size=1g --progress --no-links $1 $2
    fi
    echo 'done'
else
    echo "Example: syncit from to"
fi
