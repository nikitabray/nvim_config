-- Tree style file explorer
vim.cmd("let g:netrw_liststyle = 3")


-- Colorscheme
vim.opt.termguicolors = true
vim.cmd [[colorscheme abscs]]


-- Undo tree
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.updatetime = 50


-- Misc
vim.cmd [[set cursorline]]
vim.cmd [[set relativenumber]]
vim.cmd [[set mouse=]]
