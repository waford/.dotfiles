vim.opt.guicursor = ""

-- Line Numberrs
vim.opt.number = true                   -- Enable line numbers
vim.opt.relativenumber = true           -- Enable relative liune numbers

-- Indenting and Formating
vim.opt.tabstop = 4                     -- Sets width of tabs to 4 spaces
vim.opt.softtabstop = 4                 -- Simulate tabstops of 4 spaces
vim.opt.shiftwidth = 4                  -- Sets width of indent to 4 spaces
vim.opt.expandtab = true                -- Expands tab key to spaces
vim.opt.smartindent = true              -- Tabing will indent
vim.opt.autoindent = true               -- Enable autoindent
vim.opt.colorcolumn = '100'              -- Place a column at 100 characters

-- Search Options
vim.opt.hlsearch = false                -- Disable search highlighting
vim.opt.incsearch = true                -- Enable incremental search

vim.opt.wrap = false                    -- Disable line wraping

-- Spelling
vim.opt.spelllang = en_us               -- Set spell file
vim.opt.spell = true                    -- Enable spell check

vim.g.mapleader = " "                   -- Set leader to space

-- Configure coq_nvim pluigin --
vim.g.coq_settings = { 
    auto_start = 'shut-up',
}
