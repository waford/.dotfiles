local nnoremap = require("waford.keymap").nnoremap
local inoremap = require("waford.keymap").inoremap
local vnoremap = require("waford.keymap").vnoremap
local xnoremap = require("waford.keymap").xnoremap

nnoremap("<leader>pd", vim.cmd.Ex)

-- J or K will move highlighted blocks of code
vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")

-- Format
nnoremap("<leader>ff", "ggVG=<C-o>")

-- Auto-center Up/Down Jumps
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")

-- Auto-center searchs
nnoremap("n", "nzzzv")
nnoremap("N", "Nzzzv")

-- Paste over something without replacing your paste buffer
xnoremap("<leader>p", "\"_dP")

-- Copy into system-clipboard
nnoremap("<leader>y", "\"+y")
nnoremap("<leader>Y", "\"+Y")
vnoremap("<leader>y", "\"+y")

-- Quickfix jumps center
nnoremap("<C-k>", "<cmd>cnext<CR>zz")
nnoremap("<C-j>", "<cmd>cprev<CR>zz")
nnoremap("<leader>k", "<cmd>lnext<CR>zz")
nnoremap("<leader>j", "<cmd>lprev<CR>zz")

-- Replace word currently on
nnoremap("<leader>S", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- Set the current file as executable
nnoremap("<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

