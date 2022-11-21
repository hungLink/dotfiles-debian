#!/usr/bin/python3
####  IMPORTS  ####
import filecmp, os, subprocess, sys

#### CONFIG ####
packageNames = [
    "gimp",
    "htop",
    "neovim",
    "pass",
    "python3-pip",
    "secure-delete",
    "tmux",
    "vim",
    "vim-gtk",
    "wget"
]

installationMessage = "Going super saiyan. I won't let you get away with this."
aptMessage = "Do you want to install the following apt packages?"

####  FUNCTIONS  ####
def yesOrNo():
	# raw_input returns the empty string for "enter"
	yes = {'yeehaw','yep','yeppers','yes','ye','y'}
	no = {'nope','nopers','no','n'}

	choice = input().lower()
	if choice in yes:
		return True
	elif choice in no:
		return False
	else:
		sys.stdout.write("Please respond with 'yes' or 'no'")

def installAptPackages():
    cmd = "sudo apt install -o APT::Get::Assume-Yes='true' "
    packages = ' '.join(packageNames)
    print (os.system(cmd + packages))

####  MAIN LOOP  ####
## Install all the stuf if the user wants to.
print(aptMessage)
print(', '.join(packageNames))
if yesOrNo():
    installAptPackages()
