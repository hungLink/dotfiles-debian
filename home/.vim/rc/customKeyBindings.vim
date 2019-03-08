"#######  CUSTOM KEY BINDINGS  ########
" map space to leader
map <space> \

" #######################################
" LEADER COMMANDS!
" a - select all
noremap <leader>a ggVG

" l - Toggle relative line numbering
noremap <leader>l :set relativenumber!<enter>

" s - Toggle syntax
noremap <leader>s :if exists("g:syntax_on") \| syntax off \| else \| syntax enable \| endif<enter> 
" #######################################

" enter to create newline
map <Enter> o<ESC>

