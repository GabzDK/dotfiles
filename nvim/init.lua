require("kali")
require'colorizer'.setup()
-- Colorscheme
--vim.cmd[[colorscheme tokyonight-moon]]
vim.cmd.colorscheme "onenord"

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
