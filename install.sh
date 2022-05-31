#!/bin/sh

if [ ! -f /usr/bin/stow ]
then
	sudo apt-get install stow
fi

if [ "$1" == "apps" ]
then
	sudo source ./scripts/apts.sh
	sudo source ./scripts/snaps.sh
	source ./scripts/flatpaks.sh
fi

rm ../.zshrc \
	../.hyper.js \
	../.config/pop-shell/config.json \
	../.gitconfig \
	../.config/htop/htoprc

stow zsh \
	hyper \
	pop \
	git \
	htop \
	logiops

echo "Done!"
