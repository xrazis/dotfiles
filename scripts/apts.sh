#!/bin/sh

echo "Installing snapd..."
apt install -y snapd

echo "Installing speedtest..."
apt install -y speedtest-cli

echo "Installing restic..."
apt install -y restic

echo "Installing cURL"
apt install -y curl

echo "Installing httpie"
apt install -y httpie

echo "Installing termius..."
curl -OL https://www.termius.com/download/linux/Termius.deb
dpkg -i Termius.deb

echo "Installing vs code..."
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
curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

echo "Installing system utilities..."
apt install -y neofetch htop
apt install -y cmake libevdev-dev libudev-dev libconfig++-dev # Depedencies for logiops
apt install -y apt-transport-https ca-certificates gnupg-agent software-properties-common # Depedencies for docker

echo "Installing signal..."
wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg
cat signal-desktop-keyring.gpg |  tee -a /usr/share/keyrings/signal-desktop-keyring.gpg > /dev/null
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' |\
  tee -a /etc/apt/sources.list.d/signal-xenial.list
apt update && apt install signal-desktop
