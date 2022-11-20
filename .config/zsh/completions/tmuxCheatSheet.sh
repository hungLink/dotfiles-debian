_tmuxCheatSheet(){
	#If the user is selecting their first arg:
	if [ $COMP_CWORD -eq 1 ];
	then
        compgen -W "session window pane copy misc help"
	fi
}

complete -F _tmuxCheatSheet tmuxCheatSheet
