local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    "nvim-telescope/telescope.nvim", tag = '0.1.6',
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",run = ":TSUpdate",
    "ThePrimeagen/harpoon", 
    "mbbill/undotree",
    "vim-airline/vim-airline",
    "nvim-tree/nvim-web-devicons",
    "puremourning/vimspector", 
    "norcalli/nvim-colorizer.lua",
    "ellisonleao/gruvbox.nvim",
    "rmehri01/onenord.nvim",
    -- LSP
    'VonHeikemen/lsp-zero.nvim',
    -- LSP Support
    'neovim/nvim-lspconfig',
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',

    -- Autocompletion
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'saadparwaiz1/cmp_luasnip',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-nvim-lua',

    -- Snippets
    'L3MON4D3/LuaSnip',
    'rafamadriz/friendly-snippets',



    "folke/zen-mode.nvim",
    "eandrju/cellular-automaton.nvim",
    "laytan/cloak.nvim",
    
   {
    'goolord/alpha-nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
        'nvim-lua/plenary.nvim'
    },
    config = function ()
        require'alpha'.setup(require'alpha.themes.theta'.config)
    end
};
})
