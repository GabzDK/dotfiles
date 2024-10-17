vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex);
vim.keymap.set("n", "<leader>pl", vim.cmd.Sex);
vim.keymap.set("n", "<C-d>", "<C-d>zz");
vim.keymap.set("n", "<C-u>", "<C-u>zz");

-- Copy the current line to the clipboard
vim.api.nvim_set_keymap('n', '<leader>y', '"+yy', { noremap = true, silent = true })

-- Copy selected text to the clipboard
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true, silent = true })

-- Paste from the clipboard
vim.api.nvim_set_keymap('n', '<leader>p', '"+p', { noremap = true, silent = true })

