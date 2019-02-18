#!/bin/bash
if [ -d "$1" ]; then
    backupdate=$(date '+%Y-%m-%d_%H-%M-%S')
    zip -9Tr $1_$backupdate.zip $1
    md5sum $1_$backupdate.zip > $1_$backupdate.zip.md5
else 
    echo 'no such directory'
fi