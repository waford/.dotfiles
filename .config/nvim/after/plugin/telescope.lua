local nnoremap = require("waford.keymap").nnoremap
local inoremap = require("waford.keymap").inoremap
local builtin = require("telescope.builtin")

nnoremap("<leader>pf", builtin.find_files, {})
nnoremap("<leader>pg", builtin.git_files, {})

nnoremap("<leader>ps", function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

