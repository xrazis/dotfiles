echo "Installing oh-my-zsh and plugins..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "Installing logiops..."
curl -OL "https://github.com/PixlOne/logiops.git"
cd ./logiops
mkdir build
cd build
cmake ..
make
make install
systemctl enable --now logid
cd ~
rm -r ./logiops
curl -L "https://gist.github.com/a4d29a2f1dd7cd603a9b816bbf9dfcf8.git" -o /etc/logid.cfg

echo "Installing rust..."
curl https://sh.rustup.rs -sSf | sh
