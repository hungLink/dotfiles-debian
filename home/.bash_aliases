# dir commands
alias ..='cd ..; a'
alias ..1='cd ..; a'
alias ..2='cd ../..; a'
alias ..3='cd ../../..; a'
alias ..4='cd ../../../..; a'
alias ..5='cd ../../../../..; a'
alias ..6='cd ../../../../../..; a'
alias ..7='cd ../../../../../../..; a'
alias ..8='cd ../../../../../../../..; a'
alias ..9='cd ../../../../../../../../..; a'
alias ..10='cd ../../../../../../../../../..; a'
alias ~~='cd ~/'
alias cdSmash="cd /media/gunrugger/digital_media/games/roms/gamecube/melee/"

# ls
alias a="ls -A"
alias l="ls -lAh"
alias la="ls -lA"
alias c="clear; clear"
alias ils="kitty +kitten icat"

#Command Shorthand
alias copy="xclip -sel clip"
alias grep-history='history | grep'
alias esed='sed -E'
alias updade='sudo apt-get -y update; sudo apt-get -y upgrade'
alias pss="pass show -c sudo; exit"

# digital media server commands
alias startDigitalMediaServer='mediatomb -e eno1 -a /media/gun/digital_media/video/ -a /media/gun/digital_media/music/ -d'
alias stopDigitalMediaServer='pkill -INT mediatomb'

# git commands
alias gitUncommit='git reset --soft HEAD^'
alias gitStage='git stage * */.*'

# ranger alias
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

# strings
alias shrug='echo ¯\\_\(ツ\)_/¯'
alias overline='echo "‾"'

#file shortcuts
alias aliases="vim ~/.bash_aliases; source ~/.bashrc"
alias i3config="vim ~/.config/i3/config"

#littleDebian only
alias spellbook="$HOME/Documents/pathfinder_2/Sahmi_Illimi/spellbook"
alias trackpadDisable="xinput set-int-prop 11 \"Device Enabled\" 8 0"
alias trackpadEnable="xinput set-int-prop 11 \"Device Enabled\" 8 1"
