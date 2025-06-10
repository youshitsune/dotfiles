local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	 {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
		dependencies = { {'nvim-lua/plenary.nvim'} }
	},

	{
        'bluz71/vim-moonfly-colors',
        name="moonfly",
	},

    {'nvim-treesitter/nvim-treesitter', build = ":TSUpdate"},
	'nvim-treesitter/playground',
	'theprimeagen/harpoon',
	'mbbill/undotree',

	 {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		dependencies = {
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			{'neovim/nvim-lspconfig'},
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'},
		}
	},

    {'fatih/vim-go', build = ":GoUpdateBinaries"},
    'slint-ui/vim-slint',
    {
        "stevearc/oil.nvim",
        config = function()
            require("oil").setup()
        end,
    },

    {
        'echasnovski/mini.icons',
        config = function()
            require('mini.icons').setup()
        end,
    }
}

require("lazy").setup(plugins, {})
