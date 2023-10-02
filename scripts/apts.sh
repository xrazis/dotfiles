#!/bin/sh

echo "Installing snapd..."
apt install -y snapd

echo "Installing speedtest..."
apt install -y speedtest-cli

echo "Installing restic..."
apt install -y restic

echo "Installing curl..."
apt install -y curl

echo "Installing httpie"
apt install -y httpie

echo "Installing termius..."
curl -OL https://www.termius.com/download/linux/Termius.deb
dpkg -i Termius.deb

echo "Installing vscode..."
apt install -y code

echo "Installing zsh..."
apt install -y zsh

echo "Installing docker and docker-compose..."
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository -y \
  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) \
  stable"
apt-get update
apt-get install -y docker-ce docker-ce-cli containerd.io
echo "Visit https://www.docker.com/ for latest version of docker-compose"

echo "Installing system utilities..."
apt install -y neofetch htop
apt install -y cmake libevdev-dev libudev-dev libconfig++-dev # Depedencies for logiops
apt install -y apt-transport-https ca-certificates gnupg-agent software-properties-common # Depedencies for docker
