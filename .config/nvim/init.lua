require("waford.set")
require("waford.packer")
require("waford.remap")
-- require('plugins')
-- require('lsp')


-- " Lualine setup
-- lua<< eof
-- require('lualine').setup {
--     options = { 
--         icons_enabled = false,
--         theme = 'dracula' },
-- }
-- eof
-- 
-- " Color Schemes
-- lua vim.g.dracula_transparent_bg = true
-- lua vim.cmd[[colorscheme dracula]]
-- 
-- "ToggleTerm
-- lua require('toggleterm').setup{}
-- 
-- " Keybindings
-- "nnoremap <SPACE> <Nop>
-- let mapleader = " " " Map leader to <Space>
-- 
-- " Telescope key mappings
-- "Find files -> leader + ff
-- nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
-- " Live Grep -> leader + fg
-- nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
-- " Buffers -> leader + fb
-- nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
-- " Help Tags -> leader + fh
-- nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
-- 
-- " Terminal key mappings
-- tnoremap <A-h> <C-\><C-N><C-w>h
-- tnoremap <A-j> <C-\><C-N><C-w>j
-- tnoremap <A-k> <C-\><C-N><C-w>k
-- tnoremap <A-l> <C-\><C-N><C-w>l
-- inoremap <A-h> <C-\><C-N><C-w>h
-- inoremap <A-j> <C-\><C-N><C-w>j
-- inoremap <A-k> <C-\><C-N><C-w>k
-- inoremap <A-l> <C-\><C-N><C-w>l
-- nnoremap <A-h> <C-w>h
-- nnoremap <A-j> <C-w>j
-- nnoremap <A-k> <C-w>k
-- nnoremap <A-l> <C-w>l
