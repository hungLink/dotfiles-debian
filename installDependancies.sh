#!/bin/bash
packages = build-essential cmake djmount gimp htop i3-wm pass python3-dev ranger secure-delete tmux vim vim-gtk zathura python3-tk
echo "Going super saiyan. I won't let you get away with this."
sudo apt install -y $packages
python3 ~/.vim/bundle/YouCompleteMe/install.py --all --clang-completer
vim +PluginInstall +qall
