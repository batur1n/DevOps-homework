#!/bin/bash
for i in "$@"
do
    if [ -f $i ]; then
    mv -- "$i" "$(tr [:lower:] [:upper:] <<< "$i")"
    else printf "Sorry, no files with such name found in current directory.\n"; fi
done
#IMPORTANT! Examle of usage: bash ex05_02.sh file1 file2 file2
