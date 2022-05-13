inoremap jk <esc>


" turn off search highlight
nnoremap ,<space> :nohlsearch<CR>

map gn :bn<cr>
map gp :bp<cr>
map gw :Bclose<cr>

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Fast copypaste
noremap <leader>y "+y
noremap <leader>p "+p

map <C-p> :NERDTreeToggle<CR>

" Coc-definitions
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
