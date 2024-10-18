return{
    "folke/zen-mode.nvim",
    vim.keymap.set("n", "<leader>zz", function()
        require("zen-mode").toggle()
        vim.wo.wrap = false
    end)
}
