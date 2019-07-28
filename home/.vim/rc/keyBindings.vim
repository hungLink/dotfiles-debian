"#######  CUSTOM KEY BINDINGS  ########
" map space to leader
map <space> \
" map jkl;h to hjkl;
noremap j h
noremap k j
noremap l k
noremap ; l
noremap h ;

" #######################################
" LEADER COMMANDS!
" a - select all
nnoremap <leader>a ggVG

" l - Toggle relative line numbering
nnoremap <leader>l :set relativenumber!<enter>

" s - Toggle syntax
nnoremap <leader>s :if exists("g:syntax_on") \| syntax off \| else \| syntax enable \| endif<enter> 
" #######################################

" enter to create newline
nnoremap <Enter> o<ESC>

" Q - run the q macro
nnoremap Q @q
