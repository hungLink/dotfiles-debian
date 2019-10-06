#!/bin/bash
packagesString="bash-completion build-essential cmake djmount gimp htop i3-wm i3lock i3status pass python3-dev python3-pip python3-tk ranger secure-delete tmux vim vim-gtk wget xorg zathura zsh zsh-syntax-highlighting"
packagesArray=(${packagesString})

echo "Going super saiyan. I won't let you get away with this."
for package in "${packagesArray[@]}"
	do
	sudo apt install -y $package
	done
sudo pip3 install pywal
python3 ~/.vim/bundle/YouCompleteMe/install.py --all --clang-completer
vim +PluginInstall +qall
