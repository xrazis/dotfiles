export ZSH="/home/xrazis/.oh-my-zsh"

ZSH_THEME="spaceship"

export UPDATE_ZSH_DAYS=7

ENABLE_CORRECTION="false"

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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias upsys="sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get autoremove -y && flatpak update -y && sudo snap refresh"
alias rlogid="sudo service logid restart"
alias cdnotes="cd ~/Documents/notes"
alias ipfscs="docker run -d --restart always --name ipfs_host -v ~/ipfs-container/ipfs_staging:/export -v ~/ipfs-container/ipfs_data:/data/ipfs -p 4001:4001 -p 4001:4001/udp -p 127.0.0.1:8080:8080 -p 127.0.0.1:5001:5001 ipfs/kubo:latest"
