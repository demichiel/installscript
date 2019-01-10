#!/bin/bash
echo "Installing programs"
curl -sL https://deb.nodesource.com/setup_11.x | sudo -E bash -
sudo apt-get install -y zsh vim curl wget git unzip fonts-powerline mosh nodejs
echo "installed node npm zsh vim curl wget git unzip fonts-powerline mosh"

echo "set git config"
git config user.name "Michiel R"
git config user.email "demichiel@gmail.com"
echo "git configured"

echo "installing pathogen"
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
echo "installed pathogen"

echo "installing vim-sensible"
cd ~/.vim/bundle && git clone git://github.com/tpope/vim-sensible.git
cd ~
echo "installed vim-sensible"

echo "installing Source Code Pro"
wget https://github.com/adobe-fonts/source-code-pro/archive/2.030R-ro/1.050R-it.zip
mkdir ~/.fonts
unzip 1.050R-it.zip
cp -a ~/source-code-pro-2.030R-ro-1.050R-it/TTF/. ~/.fonts/
rm -rf ~/source-code-pro-2.030R-ro-1.050R-it
echo "installed source code pro"

echo "installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

