return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	-- Tree-sitter
	use 'nvim-treesitter/nvim-treesitter'
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
	use 'marko-cerovac/material.nvim'
	use 'Abstract-IDE/Abstract-cs'
	use({
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			vim.cmd('colorscheme rose-pine')
		end
	})
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

	-- Smooth scrolling
	use 'karb94/neoscroll.nvim'

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
