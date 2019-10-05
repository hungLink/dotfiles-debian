#!/bin/bash
packagesString="xorg python3-pip kitty wget build-essential cmake djmount gimp htop i3-wm i3lock i3status bash- completion pass python3-dev ranger secure-delete tmux vim vim-gtk zathura python3-tk"
packagesArray=(${packagesString})

echo "Going super saiyan. I won't let you get away with this."
for package in "${packagesArray[@]}"
	do
	sudo apt install -y $package
	done
sudo pip3 install pywal
python3 ~/.vim/bundle/YouCompleteMe/install.py --all --clang-completer
vim +PluginInstall +qall
