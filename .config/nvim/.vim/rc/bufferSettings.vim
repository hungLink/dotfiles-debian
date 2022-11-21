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

