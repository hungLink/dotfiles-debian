" Import all the vim stuff
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc


lua require('plugins') " Packer.nvim plugin dir
lua require('init') " lua init file we will eventually migrate to

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

noremap m h
noremap , j
noremap . k
noremap / l

noremap h /
noremap j m
noremap k .
noremap l ,

inoremap <expr> <CR> complete_info().selected != -1 ?
            \ &filetype == "gdscript" ? (coc#expandable() ?  "\<C-y>" : "\<C-y><Esc>a") : "\<C-y>"

            \ : "\<C-g>u\<CR>"

