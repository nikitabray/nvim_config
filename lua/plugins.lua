vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

return require('lazy').setup({
	{ 'NvChad/nvim-colorizer.lua', lazy = true },
	{ 'j-hui/fidget.nvim',         lazy = true },
	{
		'nvim-treesitter/nvim-treesitter',
		opts = function(_, opts)
			opts.ignore_install = { 'help' }
		end,
	},
	{
		'm-demare/hlargs.nvim', lazy = true
	},
	'williamboman/mason.nvim',
	'williamboman/mason-lspconfig.nvim',
	'neovim/nvim-lspconfig',
	{ 'junegunn/fzf',           lazy = true },
	{ 'ojroques/nvim-lspfuzzy', lazy = true },
	{
		'nvim-telescope/telescope.nvim',
		dependencies = { { 'nvim-lua/plenary.nvim' } },
		lazy = true
	},
	{ 'ms-jpq/coq_nvim',       branch = 'coq', lazy = true },
	'nikitabray/Abstract-cs',
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"kyazdani42/nvim-web-devicons",
			"MunifTanjim/nui.nvim"
		},
		lazy = true
	},
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'kyazdani42/nvim-web-devicons', lazy = true },
	},
	{
		"kylechui/nvim-surround",
		lazy = true,
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end
	},
	{ "windwp/nvim-autopairs", lazy = true },
	{ 'RRethy/vim-illuminate', lazy = true },
	{
		'numToStr/Comment.nvim',
		lazy = true,
	},
	{ "lukas-reineke/indent-blankline.nvim", lazy = true },
	'mbbill/undotree',
	{ 'tpope/vim-fugitive',                  lazy = true, cmd = "Git" },
})
