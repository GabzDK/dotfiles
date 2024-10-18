return {
    "rose-pine/neovim", name = "rose-pine",
    config = function ()
        require("rose-pine").setup({
            palette = {
                background = "#1A1B26",
            },
            vim.cmd.colorscheme "rose-pine",
        })
        vim.api.nvim_set_hl(0, 'Normal', { bg = '#1e1e1e' })
    end
}
