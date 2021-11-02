#!/bin/sh

if [ ! -f /usr/bin/stow ]
then
	sudo apt-get install stow
fi

sudo source ./scripts/apts.sh
sudo source ./scripts/snaps.sh
source ./scripts/flatpaks.sh

rm ../.zshrc \
	../.hyper.js \
	../.config/pop-shell/config.json
	../.gitconfig

stow zsh \
	hyper \
	pop \
	git
