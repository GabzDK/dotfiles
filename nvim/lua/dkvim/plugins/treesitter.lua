return {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
        "windwp/nvim-ts-autotag",
        "HiPhish/rainbow-delimiters.nvim",
        "windwp/nvim-autopairs",
    },
    build = ":TSUpdate",
    event = { "BufReadPre", "BufNewFile" },

    config = function()
        local treesitter = require("nvim-treesitter.configs")
        local autotag = require("nvim-ts-autotag")
        autotag.setup()
        treesitter.setup({
            ensure_installed = {
                "json",
                "javascript",
                "typescript",
                "rust",
                "tsx",
                "yaml",
                "html",
                "css",
                "prisma",
                "markdown",
                "markdown_inline",
                "svelte",
                "graphql",
                "bash",
                "lua",
                "vim",
                "dockerfile",
                "gitignore",
                "query",
                "vimdoc",
                "c",
            },
            sync_install = false,
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
            inndent = {
                enable = true,
            },
        })
    end,
}
