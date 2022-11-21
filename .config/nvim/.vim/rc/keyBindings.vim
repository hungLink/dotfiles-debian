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
" @ - run macro on selected lines. Example: <leader>@n<enter> runs macro n
vmap <leader>@ :normal @

" 2, 4, and 8 set the tabstop and shift width to those numbers respectively.
noremap <leader>2 :set ts=2 sw=2<enter>
noremap <leader>4 :set ts=4 sw=4<enter>
noremap <leader>8 :set ts=8 sw=8<enter>

" a - select all
nnoremap <leader>a ggVG

 " A - draw an arrow and dump you into insert
nmap <leader>A i→

" l - Toggle relative line numbering
nnoremap <leader>l :set relativenumber!<enter>

" ls - list the current dir and dump the output into the buffer
nnoremap <leader>ls :r !ls<enter>ggdd

" rz - run contents as a zsh command
noremap <leader>rz :w !zsh<enter>

" s - Toggle syntax
nnoremap <leader>s :if exists("g:syntax_on") \| syntax off \| else \| syntax enable \| endif<enter> 
" #######################################

" enter to create newline
nnoremap <Enter> o<ESC>

" arrows in insert mode write arrows
imap <Up> ↑
imap <Down> ↓
imap <Left> ←
imap <Right> →

