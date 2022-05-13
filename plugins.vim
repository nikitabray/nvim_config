call plug#begin('~/.vim/plugged')

" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" color schemas
Plug 'morhetz/gruvbox'  " colorscheme gruvbox
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
" Plug 'ayu-theme/ayu-vim'
" Plug 'sonph/onehalf', { 'rtp': 'vim' }
" Plug 'rakr/vim-one'

Plug 'vim-airline/vim-airline'

" Search
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" Git
Plug 'tpope/vim-fugitive'

" Formatter
Plug 'psf/black', { 'branch': 'stable' }

Plug 'scrooloose/nerdtree'

" Plug 'rust-lang/rust.vim'


call plug#end()
