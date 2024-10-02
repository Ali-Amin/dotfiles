return require('packer').startup(function(use)

	use 'wbthomason/packer.nvim'
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'
	use 'neovim/nvim-lspconfig'
	
	-- Code completion
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-nvim-lua'
	use 'hrsh7th/cmp-nvim-lsp-signature-help'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-buffer'

	-- DAP
	use 'mfussenegger/nvim-dap'
	use 'nvim-neotest/nvim-nio'
	use { 'rcarriga/nvim-dap-ui', requires = {'mfussenegger/nvim-dap','nvim-neotest/nvim-nio'} }
	use { 
		'leoluz/nvim-dap-go', 
		requires = {'mfussenegger/nvim-dap'} ,
		config = function () require('dap-go').setup {} end
	}

	-- Styling
	use {"catppuccin/nvim", as = "catpuccin"}
	-- Code Highlighting
	use {
		'nvim-treesitter/nvim-treesitter',
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
		end
	}
	-- Telescope
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.4',
		requires = {{ 'nvim-lua/plenary.nvim' }}
	}

	-- Git diffview
	use { 'sindrets/diffview.nvim' }

	use {
  	  	'nvim-lualine/lualine.nvim',
    		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
 	}

	use {
		"lukas-reineke/indent-blankline.nvim",
		config = function() require("ibl").setup {} end
	}

	use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	}

	use { 'jose-elias-alvarez/null-ls.nvim' }

	use {
		"nvim-treesitter/nvim-treesitter-context",
		config = function() require("treesitter-context").setup{ max_lines = 1 } end 
	}

	use { "towolf/vim-helm" }

	use "nvim-lua/plenary.nvim" 

	use {
	    "ThePrimeagen/harpoon",
	    branch = "harpoon2",
	    requires = { {"nvim-lua/plenary.nvim"} }
	}

	use {
		'christoomey/vim-tmux-navigator',
		config = function() require("tmux-config") end
	}
end)
