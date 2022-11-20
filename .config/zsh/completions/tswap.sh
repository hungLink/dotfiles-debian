_complete_tswap(){ls /usr/local/bin/ | grep terraform_ | sed 's/terraform_//'}

complete -F _complete_tswap tswap
