#!/bin/bash
echo "Installing programs"
sudo apt-get install zsh vim curl wget git unzip

mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
echo "installed pathogen"

cd ~/.vim/bundle && git clone git://github.com/tpope/vim-sensible.git
cd ~
echo "installed vim-sensible"

wget https://github.com/adobe-fonts/source-code-pro/archive/2.030R-ro/1.050R-it.zip
mkdir ~/.fonts
unzip 1.050R-it.zip
cp -a ~/source-code-pro-2.030R-ro-1.050R-it/TTF/. ~/.fonts/
rm -rf ~/source-code-pro-2.030R-ro-1.050R-it

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


