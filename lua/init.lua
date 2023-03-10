require('plugins')
require('setup')
require('lsp')
require('misc')
require('surround')
require('keymap')

vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]
vim.opt.termguicolors = true

