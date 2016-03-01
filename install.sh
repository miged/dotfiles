#!/bin/bash

set -e
for file in .bash_profile .gitconfig; do
	cp $file $HOME/$file
	echo "copied $file"
done
