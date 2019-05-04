#!/usr/bin/python3

####  IMPORTS  ####
import filecmp, os, subprocess, sys

####  VARIABLES  ####
backupFileExt = ".sysconBak"
repoHomeDir = "home"
sysHomeDir = os.path.expanduser("~")
dependanciesFile = "./installDependancies.sh"

dependanciesMessage = "Would you like to install your favorite packages and so a bunch of automated setup like a winner?"
appendToBashRC="if [ -f ~/.bash_include ]; then . ~/.bash_include; fi;"
bashRcFile = sysHomeDir + "/.bashrc"

####  FUNCTIONS  ####
def repoPathToSysPath(repoDir):
    return repoDir.replace(repoHomeDir, sysHomeDir, 1)

def makeLink(src, dst):
    os.link(src, dst)

def fetchInode(file):
    return os.stat(file).st_ino

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

####  MAIN LOOP  ####
## Make sure all the files in the repo are properly linked to the config files in the system.
for path, dirs, files in os.walk(os.path.relpath("./home")):
    # For each dir
    for dir in dirs:
        repoDir = os.path.join(path, dir)
        sysDir = repoPathToSysPath(repoDir)
        # If the dir exists, do nothing, else make it.
        if os.path.exists(sysDir):
            continue
        os.makedirs(sysDir)

    # For each file
    for file in files:
        repoFile = os.path.join(path, file)
        sysFile = repoPathToSysPath(repoFile)
        # If the file does not exist on the system, create a hardlink
        if not os.path.exists(sysFile):
            makeLink(repoFile, sysFile)

        # Check if the sysFile that exists is a hardlink if so, continue
        repoInode = fetchInode(repoFile)
        sysInode = fetchInode(sysFile)
        if repoInode == sysInode:
            continue
        
        # Check if the contents are identical, if so remove the sysFile and create the link
        if filecmp.cmp(repoFile, sysFile, shallow=False):
            os.remove(sysFile)
            makeLink(repoFile, sysFile)
            continue

        # Else, move the existing sysFile to sysFile.sysConBak and make the link.
        os.rename(sysFile, sysFile+backupFileExt)
        makeLink(repoFile, sysFile)

## Make sure that the .bash_include file gets run at the end of .bashrc
# If the magic string bashRcFile is not in the file, append it.
if not appendToBashRC in open(bashRcFile).read():
    with open(bashRcFile, "a") as file:
        file.write(appendToBashRC)

print(dependanciesMessage)
if yesOrNo():
	subprocess.call(dependanciesFile)
