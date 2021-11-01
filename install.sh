#!/bin/sh

if [ ! -f /usr/bin/stow ]
then
	sudo apt-get install stow
fi

source ./scripts/apts.sh
source ./scripts/flatpaks.sh
source ./scripts/snaps.sh

rm ../.zshrc ../.hyper.js 

stow zsh
stow hyper
