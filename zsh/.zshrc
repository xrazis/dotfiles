export ZSH="/home/xrazis/.oh-my-zsh"

ZSH_THEME="spaceship"

export UPDATE_ZSH_DAYS=7

ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

plugins=(
	docker
	docker-compose
	git
	golang
	history
	ipfs
	ubuntu
	zsh-autosuggestions
	zsh-syntax-highlighting
	)

source $ZSH/oh-my-zsh.sh

export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/home/xrazis/.cargo/bin

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

alias upsys="sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get autoremove -y && flatpak update -y && sudo snap refresh"
alias rlogid="sudo service logid restart"
alias cdnotes="cd VisualStudioCodeProjects/notes"
