vim.opt.termguicolors = true
require('impatient')
require('colorizer').setup()
require('fidget').setup()
require('plugins')
require('setup')
require('lsp')
require('misc')
require('surround')
require('keymap')
require('set')

vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]
vim.keymap.set("n", "<C-e>", ":TSHighlightCapturesUnderCursor<CR>", opts)
