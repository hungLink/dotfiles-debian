runtime .vim/rc/vundleConfig.vim
"#######  CUSTOM KEY BINDINGS  ########
" map space to leader
map <space> \
" enter to create newline
map <Enter> o<ESC>
" ctrl + hjlk to navigate windows
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_

"########  GENERAL SETTINGS  ########
" Line numbering should have the relative number and also the absolute.
set number relativenumber
" Enable syntax highlighting
syntax on
" Softer color for folded code. The default was piercing bright blue.
highlight Folded ctermbg=0 ctermfg=7

"########  BUFFER SETTINGS  ########
" This allows buffers to be hidden if you've modified a buffer.
set hidden

" To open a new empty buffer
nmap <leader>t :enew<cr>

" Move to next/previous buffer
nmap <leader><PageDown> :bnext<CR>
nmap <leader><PageUp> :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>q :bp <BAR> bd #<CR>

"########  VIM AIRLINE CONFIG ########
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'


"########  VUNDLE CONFIG  ########
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Other plugins
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'

" The following are examples of different formats supported. Keep Plugin commands between vundle#begin/end.

" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'

" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim. Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Install L9 and avoid a Naming conflict if you've already installed a different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

