#!/bin/bash
packagesString="bash-completion build-essential cmake compton djmount feh gimp htop i3-wm i3lock i3status pass python3-dev python3-pip python3-tk ranger secure-delete tmux vim vim-gtk wget xorg xsel zathura zsh zsh-syntax-highlighting"
packagesArray=(${packagesString})

echo "Going super saiyan. I won't let you get away with this."
for package in "${packagesArray[@]}"
	do
	sudo apt install -y $package
	done
