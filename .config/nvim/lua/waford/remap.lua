local nnoremap = require("waford.keymap").nnoremap
local inoremap = require("waford.keymap").inoremap

local test = require("waford.esp").test

nnoremap("<leader>D", "<cmd>Ex<CR>")
inoremap("{<CR>", "{<CR>}<Esc>ko")
inoremap("{;", "{<CR>};<Esc>ko")
inoremap("{ ", "{}<Esc>i")
inoremap("(", "()<Esc>i")
inoremap("\"", "\"\"<Esc>i")
inoremap("'", "''<Esc>i")
nnoremap("<leader>b", test)
