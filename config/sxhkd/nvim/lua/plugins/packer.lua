local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap =
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
end

return require("packer").startup(function(use)
	-- Packer
	use("wbthomason/packer.nvim")

	-- Theme
	use("folke/tokyonight.nvim")

	-- Sidebar
	use("sidebar-nvim/sidebar.nvim")

	-- statusline
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
		-- requires = {"yamatsum/nvim-nonicons", opt = true},
	}

	-- Indent line
	use("lukas-reineke/indent-blankline.nvim")

	-- treesitter interface
	use("nvim-treesitter/nvim-treesitter")
	use("nvim-treesitter/nvim-tree-docs")
	use("p00f/nvim-ts-rainbow")
	use("rafamadriz/friendly-snippets")
	use("onsails/lspkind-nvim")

	-- File explorer
	use({
 		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		requires = {
			"nvim-lua/plenary.nvim",
			{"nvim-tree/nvim-web-devicons", opt = true},
			-- {"yamatsum/nvim-nonicons", opt = true},
			"MunifTanjim/nui.nvim",
		},
	})
	
	-- Icons
	use("nvim-tree/nvim-web-devicons")
	use("ryanoasis/vim-devicons")

	-- LSP
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{                                      -- Optional
				'williamboman/mason.nvim',
				run = function()
					pcall(vim.cmd, 'MasonUpdate')
				end,
			},
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},     -- Required
			{'hrsh7th/cmp-nvim-lsp'}, -- Required
			{'L3MON4D3/LuaSnip'},     -- Required

			-- Icons
			{"nvim-tree/nvim-web-devicons", opt = true}
		}
	}

	-- NOTE: TELESCOPE
	use("nvim-lua/popup.nvim")
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use("nvim-telescope/telescope-ui-select.nvim")
	use("nvim-telescope/telescope-symbols.nvim")
	use("nvim-telescope/telescope-media-files.nvim")
	use("nvim-telescope/telescope-file-browser.nvim")
	use("nvim-telescope/telescope-dap.nvim")
	use("ibhagwan/fzf-lua")


	use{
		"folke/todo-comments.nvim",
		requires= {
			{ "nvim-lua/plenary.nvim" },
			{"nvim-tree/nvim-web-devicons", opt = true},
			{"ryanoasis/vim-devicons"}
		}
	}

	use("karb94/neoscroll.nvim")

-- if use nvim-web-devicons
	use {
		'yamatsum/nvim-nonicons',
		requires = {'kyazdani42/nvim-web-devicons'}
	}

-- Errors
	use{
		'folke/trouble.nvim',
	}

	use {"ellisonleao/carbon-now.nvim", config = function() require('carbon-now').setup() end}

end
)
