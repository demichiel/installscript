#!/bin/bash
sudo apt-get install zsh vim curl wget git
echo "Installed programs"

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "Installed oh-my-zsh"

sed -i 's/robbyrussell/fletcherm/g' .zshrc
sed -i 's/\(git\)/git\ ubuntu/g' .zshrc
echo "Edited .zshrc"

mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
echo "installed pathogen"

cd ~

touch .vimrc
echo 'execute pathogen#infect()' >> ~/.vimrc
echo 'syntax on' >> ~/.vimrc
echo 'filetype plugin indent on' >> ~/.vimrc

echo "edited .vimrc"

cd ~/.vim/bundle
git clone git://github.com/tpope/vim-sensible.git
echo "installed vim-sensible"
cd ~
echo "I'm coming home again"
