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
