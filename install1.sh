#!/bin/bash
echo "Installing programs and Jetbrains PPA"
wget https://packages.microsoft.com/config/ubuntu/21.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
curl -s https://s3.eu-central-1.amazonaws.com/jetbrains-ppa/0xA6E8698A.pub.asc | sudo apt-key add -
echo "deb http://jetbrains-ppa.s3-website.eu-central-1.amazonaws.com focal main" | sudo tee /etc/apt/sources.list.d/jetbrains-ppa.list > /dev/null
sudo apt-get update
sudo apt-get install -y apt-transport-https zsh vim curl wget git unzip fonts-powerline mosh nodejs locate fonts-firacode dotnet-sdk-5.0
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

