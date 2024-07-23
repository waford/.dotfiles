local nnoremap = require("waford.keymap").nnoremap
local inoremap = require("waford.keymap").inoremap
local vnoremap = require("waford.keymap").vnoremap
local xnoremap = require("waford.keymap").xnoremap
local tnoremap = require("waford.keymap").tnoremap

nnoremap("<leader>pd", vim.cmd.Ex)

-- J or K will move highlighted blocks of code
vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")

-- Format
nnoremap("<leader>ff", vim.lsp.buf.format)

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

inoremap("<C-c>", "<Esc>")
tnoremap("<C-c>", "<C-\\><C-N>")
tnoremap("<Esc>", '<C-\\><C-N>')

-- Use ATL+{h,j,k,l} to navigate in any mode
tnoremap("<A-h>", "<C-\\><C-N><C-w>h")
tnoremap("<A-j>", "<C-\\><C-N><C-w>j")
tnoremap("<A-k>", "<C-\\><C-N><C-w>k")
tnoremap("<A-l>", "<C-\\><C-N><C-w>l")

inoremap("<A-h>", "<C-\\><C-N><C-w>h")
inoremap("<A-j>", "<C-\\><C-N><C-w>j")
inoremap("<A-k>", "<C-\\><C-N><C-w>k")
inoremap("<A-l>", "<C-\\><C-N><C-w>l")

inoremap("<A-h>", "<C-w>h")
inoremap("<A-i>", "<C-w>i")
inoremap("<A-k>", "<C-w>k")
inoremap("<A-l>", "<C-w>l")

-- Also use CTRL-w + {h,i,k,l} to navigate
tnoremap("<C-w>", "<C-\\><C-N><C-w>")




