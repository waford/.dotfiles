-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use ({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })

    use ("nvim-treesitter/nvim-treesitter", { run = ':TSUpdate' })
    use ('nvim-treesitter/playground', { run = "TSInstall query"})
    use ('theprimeagen/harpoon')
    use ('mbbill/undotree')
    use ('tpope/vim-fugitive')
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
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

    --
    --    use 'folke/tokyonight.nvim'
    --    use 'neovim/nvim-lspconfig'
    --     use { 'ms-jpq/coq_nvim', run = 'python3 -m coq deps' }
    --    use 'ms-jpq/coq.artifacts'
    --    use 'ms-jpq/coq.thirdparty'
    --    use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true }}  
    --    use {'neoclide/coc.nvim', branch = 'release'}
    --    use 'simrat39/rust-tools.nvim'
    --    use 'nvim-lua/plenary.nvim'
    --    use 'mfussenegger/nvim-dap'
    --
end)
