#Command Shorthand
alias deleteScreenshots="shred -u /Users/alopez/Desktop/Screen\ Shot\ *"
alias grep-history='history | grep'
alias v='vim'

# Applications
alias chatty='nohup /usr/local/opt/openjdk@17/bin/java -jar /Users/alopez/repos-personal/Chatty_0.17/Chatty.jar > /dev/null &'
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

# strings
alias game='echo -e "Interractive + fun = plaything\nplaything without goal = toy\nplaything + goal = challenge\nsolo challenge = puzzle\nchallenge with a group = conflict\nconflict without player to player interraction = competition\ninteractive conflict = game."'
alias shrug='echo ¯\\_\(ツ\)_/¯ | pbcopy'
alias shortTags='echo "#shorts #alttp #nmg #failure" | pbcopy'
alias overline='echo "‾" | pbcopy'
alias coexist='echo :star_and_crescent::baseball::star_of_david::cancer::latin_cross: | pbcopy'
alias yoloblomlmtaasosbtdpwkeoboiodawcheoboitod='echo "You only live once, but living once means living many times as a series of similar, but technically different people who know eachother, but only in one direction; and can help eachother, but only in the other direction."'

## SINGLE CHAR SHORTCUTS
# ranger
alias r='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
# re-run sources
alias s="source ~/.zshrc"
#open pwd in finder
alias o="open ."
alias a="ls -GA"
alias l="ls -GlAh"
alias la="ls -lA"
alias c="clear"
#re-start zsh
alias z="clear; exec zsh -l"

# edit bash files
alias aliases="v ~/.config/zsh/aliases.sh; s;"

alias vimPaste="v +'normal \"*p'ggdd"

alias rmdsstore="find . -name '.DS_Store' -type f -delete"
