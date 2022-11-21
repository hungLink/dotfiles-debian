" Import all the vim stuff
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

" Packer.nvim plugin dir
lua require('plugins')

" coc basic config file
source $HOME/.config/nvim/plug-config/coc.vim

" specify binary locations
let g:python3_host_prog = '/usr/local/bin/python3'
let g:godot_executable = '/Applications/Godot.app'

" disable providers
let g:loaded_perl_provider = 0
let g:loaded_ruby_provider = 0
