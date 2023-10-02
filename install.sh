#!/bin/bash

if [ ! -f /usr/bin/stow ]
then
	sudo apt-get install stow
fi

if [ "$1" == "apps" ]
then
	source ./scripts/apts.sh
	source ./scripts/directs.sh
	source ./scripts/snaps.sh
	source ./scripts/flatpaks.sh
fi

rm ../.zshrc \
	../.hyper.js \
	../.config/pop-shell/config.json \
	../.gitconfig \
	/etc/logid.cfg

stow zsh \
	hyper \
	pop \
	git

stow -t /etc logiops

echo "Done!"
