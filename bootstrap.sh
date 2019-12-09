#!/bin/bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

function doIt() {
	# files
	for file in {.bash_profile,.aliases,.functions,.macosx,.zshrc,.vimrc}; do
		[ -r "$file" ] && [ -f "$file" ] && ln -sv "$(pwd)/$file" ~;
	done;

	# directories
	for dir in {.vim,init}; do
		ln -sv "$(pwd)/$dir" ~;
	done;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;
