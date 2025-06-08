vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use({
        'bluz71/vim-moonfly-colors',
        as="moonfly",
	})

	use('nvim-treesitter/nvim-treesitter', {run = ":TSUpdate"})
	use('nvim-treesitter/playground')
	use('theprimeagen/harpoon')
	use('mbbill/undotree')

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			{'neovim/nvim-lspconfig'},
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'},
		}
	}

    use('fatih/vim-go', { run = ":GoUpdateBinaries"})
    use 'slint-ui/vim-slint'
    use({
        "stevearc/oil.nvim",
        config = function()
            require("oil").setup()
        end,
    })

    use({
        'echasnovski/mini.icons',
        config = function()
            require('mini.icons').setup()
        end,
    })

end)
