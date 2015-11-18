#!/bin/bash
echo "Installing programs"
sudo apt-get install zsh vim curl wget git

mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
echo "installed pathogen"

cd ~/.vim/bundle && git clone git://github.com/tpope/vim-sensible.git
cd ~
echo "installed vim-sensible"


sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"