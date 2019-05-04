#!/bin/bash
echo "Going super saiyan. I won't let you get away with this."
sudo apt install -y vim ranger i3-wm
sudo apt install -y build-essential cmake python3-dev
python3 ~/.vim/bundle/YouCompleteMe/install.py --all --clang-completer
vim +PluginInstall +qall
