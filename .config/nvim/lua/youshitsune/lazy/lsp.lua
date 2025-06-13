return {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    dependencies = {
        {'williamboman/mason.nvim'},
        {'williamboman/mason-lspconfig.nvim'},

        {'neovim/nvim-lspconfig'},
        {'hrsh7th/nvim-cmp'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'L3MON4D3/LuaSnip'},
    },
    config = function()
        local lsp_zero = require('lsp-zero')
        local cmp = require('cmp')

        lsp_zero.on_attach(function(client, bufnr)
            lsp_zero.default_keymaps({buffer = bufnr})
        end)

        cmp.setup({
            mapping = cmp.mapping.preset.insert({
                ['<CR>'] = cmp.mapping.confirm({select = false}),
                ['<Tab>'] = cmp.mapping.select_next_item({behavior = 'insert'}),
                ['<S-Tab>'] = cmp.mapping.select_prev_item({behavior = 'insert'}),
            })
        })

        require('mason').setup({})
        require("mason-lspconfig").setup({
            automatic_enable = true,
        })

        vim.lsp.enable('clangd')
    end
}
