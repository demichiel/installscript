if [ ! -f ~/.vimrc ]
then
	touch .vimrc
	echo 'execute pathogen#infect()' >> ~/.vimrc
	echo 'syntax on' >> ~/.vimrc
	echo 'filetype plugin indent on' >> ~/.vimrc
	echo 'Created .vimrc'
fi

sed -i 's/robbyrussell/agnoster/g' ~/.zshrc
sed -i 's/\(git\)/git\ ubuntu/g' ~/.zshrc
echo '[[ -s "/etc/grc.zsh" ]] && source /etc/grc.zsh' >> ~/.zshrc
echo "Edited .zshrc"

echo "installing tldr"
sudo npm install -g tldr

echo "set owner of .config"
sudo chown -R $(whoami) ~/.config

echo "update locate db"
sudo updatedb

echo "restart zsh"
zsh
