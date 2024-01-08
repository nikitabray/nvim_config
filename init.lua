-- Setup Lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git", "clone", "--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git", "--branch=stable", -- latest stable release
		lazypath
	})
end
vim.opt.rtp:prepend(lazypath)


require('plugins')
require('colorscheme')

require('colorizer').setup()
require('fidget').setup()

require('setup')
require('lsp')
require('surround')
require('keymap')
require('set')


-- Misc
vim.cmd [[set cursorline]]
vim.cmd [[set relativenumber]]
vim.cmd [[set mouse=]]
