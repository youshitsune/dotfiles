
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", ":Oil<CR>")
vim.keymap.set("n","<leader>t", ":terminal<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set("t","<Esc>", "<C-\\><C-n>")
