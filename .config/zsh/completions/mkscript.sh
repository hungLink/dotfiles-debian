_mkscript(){
	#If the user is selecting their first arg:
	if [ $COMP_CWORD -eq 1 ];
	then
        compgen -W "python3 sh zsh"
	fi
}

complete -F _mkscript mkscript
