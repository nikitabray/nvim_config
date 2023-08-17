vim.opt.termguicolors = true

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require('plugins')
require('colorizer').setup()
require('fidget').setup()

require('setup')
require('lsp')
require('misc')
require('surround')
require('keymap')
require('set')

vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]
vim.keymap.set("n", "<C-e>", ":TSHighlightCapturesUnderCursor<CR>", opts)
