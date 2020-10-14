#!/bin/bash
echo "Installing programs"
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y zsh vim curl wget git unzip fonts-powerline mosh nodejs locate fonts-firacode
echo "installed node npm zsh vim curl wget git unzip fonts-powerline mosh locate fonts-firacode grc"

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

echo "installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

