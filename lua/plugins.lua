vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

return require('lazy').setup({
	{ "nvim-treesitter/nvim-treesitter-textobjects" }, { "tpope/vim-dadbod" },
	{ "iagorrr/noctishc.nvim" }, { 'NvChad/nvim-colorizer.lua', lazy = true },
	{ 'j-hui/fidget.nvim',    tag = "legacy", lazy = true, event = "LspAttach" }, {
	'nvim-treesitter/nvim-treesitter',
	opts = function(_, opts) opts.ignore_install = { 'help' } end
}, { 'm-demare/hlargs.nvim', lazy = true }, 'williamboman/mason.nvim',
	'williamboman/mason-lspconfig.nvim', 'neovim/nvim-lspconfig',
	{ 'junegunn/fzf',          lazy = true }, { 'ojroques/nvim-lspfuzzy', lazy = true }, {
	'nvim-telescope/telescope.nvim',
	dependencies = { { 'nvim-lua/plenary.nvim' } },
	lazy = true
}, 'Abstract-IDE/Abstract-cs', {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v2.x",
	dependencies = {
		"nvim-lua/plenary.nvim", "kyazdani42/nvim-web-devicons",
		"MunifTanjim/nui.nvim"
	},
	lazy = true
}, {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'kyazdani42/nvim-web-devicons', lazy = true }
}, {
	"kylechui/nvim-surround",
	lazy = true,
	version = "*", -- Use for stability; omit to use `main` branch for the latest features
	event = "VeryLazy",
	config = function()
		require("nvim-surround").setup({
			-- Configuration here, or leave empty to use defaults
		})
	end
}, { "windwp/nvim-autopairs", lazy = true },
	{ 'RRethy/vim-illuminate', lazy = true },
	{ 'numToStr/Comment.nvim', lazy = true }, 'mbbill/undotree',
	{ 'tpope/vim-fugitive', lazy = true,         cmd = "Git" }, {
	"hrsh7th/nvim-cmp",
	version = false, -- last release is way too old
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp", "hrsh7th/cmp-buffer", "hrsh7th/cmp-path",
		"saadparwaiz1/cmp_luasnip"
	},
	opts = function()
		vim.api.nvim_set_hl(0, "CmpGhostText",
			{ link = "Comment", default = true })
		local cmp = require("cmp")
		local defaults = require("cmp.config.default")()
		return {
			completion = { completeopt = "menu,menuone,noinsert" },
			snippet = {
				expand = function(args)
					require("luasnip").lsp_expand(args.body)
				end
			},
			mapping = cmp.mapping.preset.insert({
				["<C-n>"] = cmp.mapping.select_next_item({
					behavior = cmp.SelectBehavior.Insert
				}),
				["<C-p>"] = cmp.mapping.select_prev_item({
					behavior = cmp.SelectBehavior.Insert
				}),
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-Space>"] = cmp.mapping.complete(),
				["<C-e>"] = cmp.mapping.abort(),
				["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
				["<S-CR>"] = cmp.mapping.confirm({
					behavior = cmp.ConfirmBehavior.Replace,
					select = true
				}) -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
			}),
			sources = cmp.config.sources({
				{ name = "nvim_lsp" }, { name = "luasnip" }, { name = "buffer" },
				{ name = "path" }
			}),
			formatting = {
				format = function(_, item)
					return item
				end
			},
			experimental = { ghost_text = { hl_group = "CmpGhostText" } },
			sorting = defaults.sorting
		}
	end
}, {
	"folke/trouble.nvim",
	dependencies = { "kyazdani42/nvim-web-devicons" },
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	}
}, {
	"L3MON4D3/LuaSnip",
	dependencies = { "rafamadriz/friendly-snippets" },

	-- follow latest release.
	-- install jsregexp (optional!).
	build = "make install_jsregexp",
	config = function()
		require("luasnip.loaders.from_vscode").lazy_load()
	end,
},
	{ "catppuccin/nvim",    name = "catppuccin", priority = 1000 },
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{ "junkblocker/git-time-lapse" },
	{ "xiyaowong/transparent.nvim" },
	{ "mogelbrod/vim-jsonpath" }

})
