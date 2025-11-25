-- Setting a global leader key; space is a common practice
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)
-- TODO i want <leader>do be written here, not dl
vim.keymap.set('n', '<leader>dl', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })
