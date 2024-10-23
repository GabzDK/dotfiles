return {
"rose-pine/neovim", name = "rose-pine",
config = function ()
    require("rose-pine").setup({
        highlight_groups = {
            TelescopeBorder = { fg = "highlight_high", bg = "none" },
            TelescopeNormal = { bg = "none" },
            TelescopePromptNormal = { bg = "base" },
            TelescopeResultsNormal = { fg = "subtle", bg = "none" },
            TelescopeSelection = { fg = "text", bg = "base" },
            TelescopeSelectionCaret = { fg = "rose", bg = "rose" },
            Normal = { bg = "none" },
        },
        palette = {
            main = {
                    base = '#000000',
                },
            }
        })
        vim.cmd.colorscheme "rose-pine"
    end
}
