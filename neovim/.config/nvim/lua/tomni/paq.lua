require "paq" {
    "savq/paq-nvim";
    "nvim-lua/plenary.nvim";
    { "nvim-telescope/telescope.nvim", branch = "0.1.x" };
    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' };
    "mbbill/undotree";
    "tpope/vim-fugitive";

    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'};
    {'williamboman/mason.nvim'};
    {'williamboman/mason-lspconfig.nvim'};
    {'neovim/nvim-lspconfig'};
    {'hrsh7th/nvim-cmp'};
    {'hrsh7th/cmp-nvim-lsp'};
    {'L3MON4D3/LuaSnip'};

    "folke/trouble.nvim";
    "ThePrimeagen/vim-be-good";

    {"catppuccin/nvim", as = "catppuccin" };
}
