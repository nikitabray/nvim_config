set t_Co=256
" colorscheme onehalfdark
" colorscheme one
colorscheme gruvbox
" let g:airline_theme='one'
hi Normal guibg=NONE ctermbg=NONE
hi SignColumn guibg=NONE ctermbg=NONE
" highlight clear LineNr
" colorscheme OceanicNext
"let g:material_terminal_italics = 1
" variants: default, palenight, ocean, lighter, darker, default-community,
"           palenight-community, ocean-community, lighter-community,
"           darker-community
"let g:material_theme_style = 'darker'
"colorscheme material
if (has('termguicolors'))
  set termguicolors
endif

" variants: mirage, dark, dark
"let ayucolor="mirage"
"colorscheme ayu
