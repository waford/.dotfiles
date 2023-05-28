local nnoremap = require("waford.keymap").nnoremap
local inoremap = require("waford.keymap").inoremap

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

nnoremap("<leader>a", mark.add_file)
nnoremap("<leader>e", ui.toggle_quick_menu)
nnoremap("<leader>o", ui.nav_prev)
nnoremap("<leader>p", ui.nav_prev)
--nnoremap("<C-o>", function() ui.nav_file(2) end)
--nnoremap("<C-i>", function() ui.nav_file(1) end)
--nnoremap("<C-p>", function() ui.nav_file(3) end)
--nnoremap("<C-[>", function() ui.nav_file(4) end)
