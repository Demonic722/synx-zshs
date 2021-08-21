#!/bin/zsh

setopt extended_glob

if [ $# -eq 0 ]
then
    echo "No directory specified"
    exit 1
fi

echo "Removing non-nds files from $1"
rm -v $1/^*.nds > /tmp/nds-files-only-out.txt
echo "Done!"
