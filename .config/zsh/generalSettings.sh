autoload -U +X bashcompinit && bashcompinit # enable completion for terraform

ZSH_THEME="jonathan"
HYPHEN_INSENSITIVE="true"           # hyphen insensitive autocomplete
zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' frequency 1    # measured in days
zstyle ':completion:*' completer _expand_alias _extensions _complete _approximate
COMPLETION_WAITING_DOTS="true"
export ANSIBLE_NOCOWS=1

plugins=(docker docker-compose git)

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
