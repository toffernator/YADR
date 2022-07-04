#!/bin/bash

# Check prequisites
command -v stow >/dev/null 2>&1 || { echo >&2 "stow is not installed.  Aborting."; exit 1; }

if [ -z $STOW_FOLDERS ]
then
	STOW_FOLDERS=alacritty,git,i3,picom,lvim
fi

# Create symlinks
for folder in $(echo $STOW_FOLDERS | sed "s/,/ /g")
do
	echo "Stowing $folder..."
	stow -D $folder
	stow $folder
done

