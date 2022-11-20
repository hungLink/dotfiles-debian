if status is-interactive
    # Commands to run in interactive sessions can go here
    #### --ALIAS IMPORT FROM ZSH-- ####
    cp $HOME/.config/zsh/aliases.sh $HOME/.config/fish/aliases.sh
    sed "s/^alias /alias -s /" $HOME/.config/fish/aliases.sh > $HOME/.config/fish/aliases.fish 
    fish $HOME/.config/fish/aliases.fish > /dev/null
    rm $HOME/.config/fish/aliases.*
    #### -- END ALIAS IMPORT-- ####
    
    # initialize rbenv
    source (rbenv init - | psub)
end
