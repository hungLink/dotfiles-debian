#!/usr/bin/python3
####  IMPORTS  ####
import os
import subprocess
import sys

#### CONFIG ####
aptPackageNames = [
    "gimp",
    "fish",
    "htop",
    "inxi",
    "neofetch",
    "neovim",
    "npm",
    "pass",
    "python2.7",
    "python3-pip",
    "python3-pipdeptree",
    "python-pip",
    "rbenv",
    "secure-delete",
    "syncthing",
    "tmux",
    "vim",
    "vim-gtk",
    "wget"
]
pip2PackageNames = [
    "pynvim"
]
pip3PackageNames = [
    "pynvim",
    "jedi"
]

nvmPackageNames = [
    "sudo npm install -g neovim"
]
installationMessage = "heh heh heh... Thank you..."
welcomeMsg = "WELCOME!!"
aptMessage = "Got some raaaare APT packages for ya, stranga'"
pipMessage = "Gotta' lotta' noice pip packages 'ere for ya'"
vimMessage = "Whattya 'VI'in? Stranga... (install NVIM packages?)"

userWantsAptPackages = False
userWantsPipPackages = False
userWantsVimPackages = False

####  FUNCTIONS  ####
def yesOrNo():
    # raw_input returns the empty string for "enter"
    yes={"absolutely","achcha","affirmative","agreed","allright","alright","ayeaye","aye","byallmeans","certainly","intheaffirmative","indeed","ofcourse","ok","okay","okey-doke","okey-dokey","righto","righty-ho","roger","sure","surely","uh-huh","verywell","yah","yea","yeah","yep","yup",'a','confirm','y','ye','yeehaw','yep','yeppers','yes'}
    no={"absolutelynot","bynomeans","mostcertainlynot","nae","nah","naw","nay","negative","never","nofear","noindeed","nosiree","nothanks","noway","nope","notatall","notonyourlifesport","notonyourlife","notonyournelly","notreally","ofcoursenot","undernocircumstances",'b','deny','n''no','nope','nopers'}
    choice = input().lower().strip()
    if choice in yes:
        return True
    elif choice in no:
        return False
    else:
        sys.stdout.write("Please respond with something that means 'yes' or something that means 'no'.")

def installAptPackages():
    cmd = "sudo apt install -o APT::Get::Assume-Yes='true' "
    aptPackages = ' '.join(aptPackageNames)
    print (os.system(cmd + aptPackages))

def installPipPackages():
    for pip2PackageName in pip2PackageNames:
        cmd = "python2.7 -m pip install --user --upgrade "
        print (os.system(cmd + pip2PackageName))
    for pip3PackageName in pip3PackageNames:
        cmd = "python3 -m pip install --user --upgrade "
        print (os.system(cmd + pip3PackageName))

def installVimPackages():
    cmd = "nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'"
    print (os.system(cmd))

####  MAIN LOOP  ####
## Install all the stuff if the user wants to.
print(aptMessage)
print(', '.join(aptPackageNames))
if yesOrNo():
    userWantsAptPackages = True

print(pipMessage)
print("python2: " + ', '.join(pip2PackageNames))
print("python3: " + ', '.join(pip3PackageNames))
if yesOrNo():
    userWantsPipPackages = True

print(vimMessage)
if yesOrNo():
    userWantsVimPackages = True

if userWantsAptPackages:
    installAptPackages()
if userWantsPipPackages:
    installPipPackages()
if userWantsVimPackages:
    installVimPackages()
