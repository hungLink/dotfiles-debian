#!/bin/bash

####----- HARDLINK CONFIG FILES -----####
find home -type f -name '*' -print0 | 
while IFS= read -r -d '' file; do
	#Deterimine the path where the config file should go
	link=$HOME$(echo $file | sed "s/home//")
	dir=$(dirname "$link")
	mkdir -p "$dir"

	#Is the path clear to make a hard link? IE is there no file where we need the link?
	if [[ ! -f $link ]]; then
		ln "$file" "$link"
		continue
	fi

	#There is a file where the link is trying to go.
	#Are they hardlinked?
	fileInode=$( ls -i "$file" | cut -f1 -d' ' )
	linkInode=$( ls -i "$link" | cut -f1 -d' ' )
	if [ $fileInode = $linkInode ]; then
		#if they are harldinked already, then no action is neccessary.
		continue	
	fi
	
	#The file in the way is not a hard link
	#Is the text identical?
	if [[ ! $(comm -3 $file $link) ]]; then
		rm "$link"
		ln "$file" "$link"
	fi
	
	echo "Processing "$file
	echo "It looks like we have a file in the way with different contents then that of the one in the repo."
	echo "I shall mv the existing one to "$link".sysConBak and make the link in the appropriate place."
	mv "$link" "$link".sysConBak
	ln "$file" "$link"
	
done

####----- BASH AND SCRIPTS FOLDER -----####
appendToBashRC="if [ -f ~/.bash_custom/.bash_aliases ]; then . ~/.bash_custom/.bash_aliases; fi; if [ -f ~/.bash_custom/.bash_functions ]; then . ~/.bash_custom/.bash_functions; fi;"
grepAppend=$(echo $appendToBashRC | sed "s/\[/\\\[/g" | sed "s/\]/\\\]/g")
if [[ $(grep "$grepAppend" ~/.bashrc) ]]; then
	echo "Bash custom has already be setup. try running 'source ~/.bashrc' or opening an new terminal session.";
else
	echo -e "" >> ~/.bashrc
	comment="##Bash Custom##"
	echo -e "Appending the following to your ~/.bashrc file"
	echo -e $comment
	echo -e $appendToBashRC
	echo -e $comment >> ~/.bashrc
	echo -e $appendToBashRC >> ~/.bashrc
	echo -e "" >> ~/.bashrc
fi;

appendToBashRC='PATH="$PATH:$HOME/scripts"'
grepAppend=$(echo $appendToBashRC | sed "s/\[/\\\[/g" | sed "s/\]/\\\]/g")
if [[ $(grep "$grepAppend" ~/.bashrc) ]]; then
	echo "The PATH already contains your scripts"
else
	comment="##Add scripts folder to PATH##"
	echo -e "Appending the following to your ~/.bashrc file"
	echo -e $comment
	echo -e $appendToBashRC
	echo -e $comment >> ~/.bashrc
	echo -e $appendToBashRC >> ~/.bashrc
	echo -e "" >> ~/.bashrc
fi;


