#!/bin/bash
sudo apt-get install zsh vim curl wget git

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

sed -i 's/robbyrussel/fletcherm/g' .zshrc
sed -i 's/\(git\)/git\ ubuntu/g' .zshrc

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

touch .vimrc
echo 'execute pathogen#infect()' >> ~/.vimrc
echo 'syntax on' >> ~/.vimrc
echo 'filetype plugin indent on' >> ~/.vimrc

cd ~/.vim/bundle && \
git clone git://github.com/tpope/vim-sensible.git
