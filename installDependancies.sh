#!/bin/bash
packagesString="kitty wget build-essential cmake djmount gimp htop i3-wm i3-lock bash- completion pass python3-dev ranger secure-delete tmux vim vim-gtk zathura python3-tk"
packagesArray=(${packagesString})

echo "Going super saiyan. I won't let you get away with this."
for package in "${packagesArray[@]}"
	do
	sudo apt install -y $package
	done
python3 ~/.vim/bundle/YouCompleteMe/install.py --all --clang-completer
vim +PluginInstall +qall
