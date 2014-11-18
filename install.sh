#!/bin/bash

# Pull in submodules

git submodule init 
git submodule update

# Loop through all dotfiles, make backups and create symlinks

for dotfile in $(ls -A | grep '^\.' | grep -v '^\.git')
do
	[[ -f ~/${dotfile} || -e ~/${dotfile} ]] && mv ~/${dotfile} ~/${dotfile}.orig

	ln -s $(pwd)/${dotfile} ~/${dotfile}
done

# Just because

. ~/.bashrc
