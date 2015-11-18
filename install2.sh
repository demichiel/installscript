if [ ! -f ~/.vimrc ]
then
	touch .vimrc
	echo 'execute pathogen#infect()' >> ~/.vimrc
	echo 'syntax on' >> ~/.vimrc
	echo 'filetype plugin indent on' >> ~/.vimrc
	echo 'Created .vimrc'
fi

sed -i 's/robbyrussell/fletcherm/g' ~/.zshrc
sed -i 's/\(git\)/git\ ubuntu/g' ~/.zshrc
echo "Edited .zshrc"

zsh