_complete_sshh(){
	#If the user is selecting their first arg:
	if [ $COMP_CWORD -eq 1 ];
	then
        #Get a list of the directories in .ssh/configs
		ls -d $HOME/.ssh/configs/*/ | xargs -n 1 basename
    #If the user has selected a directory (they are on second arg):
	elif [ $COMP_CWORD -eq 2 ];
	then
        #Get all the host names in the config file in that directory
		PREV=${COMP_WORDS[COMP_CWORD-1]}
        cat $HOME/.ssh/configs/$PREV/config | grep "^Host [a-zA-Z]" | cut -f2 -d' '
	fi
}

_complete_bassh(){
	#If the user is selecting their first arg:
	if [ $COMP_CWORD -eq 1 ];
	then
        #Get a list of the directories in .ssh/configs
		ls -d $HOME/.ssh/configs/*/ | xargs -n 1 basename
    #If the user has selected a directory (they are on second arg):
	elif [ $COMP_CWORD -eq 2 ];
	then
        #Get all the host names in the config file in that directory
		PREV=${COMP_WORDS[COMP_CWORD-1]}
        cat $HOME/.ssh/configs/$PREV/config | grep "^Host [a-zA-Z]" | cut -f2 -d' '
    #If the user has selected a project and server (they are on third arg):
	elif [ $COMP_CWORD -eq 3 ];
	then
        #Grab the shell scripts
        ls -A | grep ".sh$"
	fi
}
complete -F _complete_sshh sshh
complete -F _complete_bassh bassh
