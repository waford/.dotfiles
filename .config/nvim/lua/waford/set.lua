vim.opt.guicursor = ""
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.spelllang = en_us
vim.opt.spell = true

vim.g.mapleader = " "

-- Configure coq_nvim pluigin --
vim.g.coq_settings = { 
    auto_start = 'shut-up',
}
