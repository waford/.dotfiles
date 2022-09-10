-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'folke/tokyonight.nvim'
  use 'neovim/nvim-lspconfig'
  use { 'ms-jpq/coq_nvim', run = 'python3 -m coq deps' }
  use  'ms-jpq/coq.artifacts'
  use  'ms-jpq/coq.thirdparty'
end)
