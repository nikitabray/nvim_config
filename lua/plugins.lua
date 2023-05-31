return require('packer').startup(function(use)
	config = {
		-- Move to lua dir so impatient.nvim can cache it
		compile_path = vim.fn.stdpath('config') .. '/plugin/packer_compiled.lua',
		display = {
			open_fn = function()
				return require('packer.util').float({ border = 'single' })
			end
		},
		git = {
			cmd = 'git', -- The base command for git operations
			depth = 1, -- Git clone depth
			clone_timeout = 600, -- Timeout, in seconds, for git clones
		},
	}
	use 'wbthomason/packer.nvim'


	use { -- Speed up loading Lua modules in Neovim to improve startup time.
		'lewis6991/impatient.nvim',
	}
	use { -- The fastest Neovim colorizer.
		'NvChad/nvim-colorizer.lua',
	}

	use 'j-hui/fidget.nvim'
	-- Tree-sitter
	use {
		'nvim-treesitter/nvim-treesitter'
	}
	use {
		'm-demare/hlargs.nvim',
		requires = { 'nvim-treesitter/nvim-treesitter' }
	}
	-- LSP
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'
	use 'neovim/nvim-lspconfig'
	-- Search
	use 'junegunn/fzf'
	use 'junegunn/fzf.vim'
	use 'ojroques/nvim-lspfuzzy'
	use {
		'nvim-telescope/telescope.nvim',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}
	-- Autocompletion
	use { 'ms-jpq/coq_nvim', branch = 'coq' }
	use { 'ms-jpq/coq.artifacts', branch = 'artifacts' }
	-- Colorscheme
	use 'Abstract-IDE/Abstract-cs'
	-- Navigation
	vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
	use {
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		}
	}

	-- Status line
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	-- Brackets (and more)
	use({
		"kylechui/nvim-surround",
		tag = "*", -- Use for stability; omit to use `main` branch for the latest features
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end
	})
	use "windwp/nvim-autopairs"

	-- Cursor highlighting
	use 'RRethy/vim-illuminate'

	-- Commentary
	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}

	-- Indent
	use "lukas-reineke/indent-blankline.nvim"
	-- Undo history
	use 'mbbill/undotree'
	-- Git
	use 'tpope/vim-fugitive'
end)
