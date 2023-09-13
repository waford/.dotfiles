-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

return require('lazy').setup({
    -- Packer can manage itself
    {'wbthomason/packer.nvim'},
    {
        'nvim-telescope/telescope.nvim', branch = '0.1.x',
        dependencies = { {'nvim-lua/plenary.nvim'} }
    },
   -- use ({
   --     'rose-pine/neovim',
   --     as = 'rose-pine',
   --     config = function()
   --         vim.cmd('colorscheme rose-pine')
   --     end
   -- })
    { 
        "EdenEast/nightfox.nvim",
        as = "nightfox",
        config = function()
            vim.cmd("colorscheme nightfox")
        end
    },


    {"nvim-treesitter/nvim-treesitter", build = ':TSUpdate' },
    {'nvim-treesitter/playground', build = "TSInstall query"},
    {'theprimeagen/harpoon'},
    {'mbbill/undotree'},
    {'tpope/vim-fugitive'},
    {
     'VonHeikemen/lsp-zero.nvim',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},
            {'kdheepak/cmp-latex-symbols'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }

})
