return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local options = {
            ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline"},

            sync_install = false,
            auto_install = true,

            highlight = {
                enable = true,

                additional_vim_regex_highlighting = false,
            },
        }
        require('nvim-treesitter.configs').setup(options)
    end,
}
