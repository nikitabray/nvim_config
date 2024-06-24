-- Tree style file explorer
vim.cmd("let g:netrw_liststyle = 3")


-- Colorscheme
vim.opt.termguicolors = true
vim.cmd [[colorscheme abscs]]
-- vim.cmd.colorscheme "tokyonight-moon"



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
-- vim.cmd [[highlight Normal guibg=none]]
-- vim.cmd [[highlight NonText guibg=none]]
-- vim.cmd [[highlight Normal ctermbg=none]]
-- vim.cmd [[highlight NonText ctermbg=none]]
--
require("transparent").setup({ -- Optional, you don't have to run setup.
	groups = {             -- table: default groups
		'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
		'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
		'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
		'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
		'EndOfBuffer',
	},
	extra_groups = { "lualine" }, -- table: additional groups that should be cleared
	exclude_groups = {},   -- table: groups you don't want to clear
})
colors = {
	darkgray = "#16161d",
	gray = "#727169",
	innerbg = nil,
	outerbg = "#16161D",
	normal = "#7e9cd8",
	insert = "#98bb6c",
	visual = "#ffa066",
	replace = "#e46876",
	command = "#e6c384",
}

-- local custom_codedark = require 'lualine.themes.codedark'
--
-- custom_codedark.normal.c.bg = innerbg
-- custom_codedark.replace.c.bg = innerbg
-- custom_codedark.insert.c.bg = innerbg
-- require("lualine").setup({
-- 	options = { theme = custom_codedark } })
--
--
-- local z = require('lualine').get_config()
--
-- z.theme.normal.c.bg = innerbg

-- require("lualine").setup({
-- 	options = { theme = z.theme } })
