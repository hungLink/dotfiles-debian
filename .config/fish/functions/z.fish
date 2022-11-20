function z --wraps='clear; exec zsh -l' --description 'alias z=clear; exec zsh -l'
  clear; exec zsh -l $argv; 
end
