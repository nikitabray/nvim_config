set mouse=a  " enable mouse
set encoding=utf-8
set noswapfile
set scrolloff=7

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix
filetype indent on      " load filetype-specific indent files

syntax on
set cursorline

filetype plugin on

" Split windows opens at bottom and at right
set splitbelow
set splitright

" set colorcolumn=79

" Line numbers
set number relativenumber
set nu rnu

" Run black on save
autocmd BufWritePre *.py execute ':Black'

" Root
function! s:find_git_root()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction
