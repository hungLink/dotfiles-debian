" Import all the vim stuff
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

" Packer.nvim plugin dir
lua require('plugins')

" specify binary locations
let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'
let g:godot_executable = '/Applications/Godot.app'

" disable providers
let g:loaded_perl_provider = 0
let g:loaded_ruby_provider = 0

" recompile packer upon changing it's config file
augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins.lua source <afile> | PackerCompile
augroup end

