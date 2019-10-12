for f (~/.config/commonSh/**/*(N.))  . $f
for f (~/.config/zsh/**/*(N.))  . $f
fpath=("$HOME/.config/zsh/prompts" "$fpath[@]")
autoload -Uz promptinit
promptinit
prompt gun
