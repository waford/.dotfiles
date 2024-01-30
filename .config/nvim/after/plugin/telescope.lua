local nnoremap = require("waford.keymap").nnoremap
local inoremap = require("waford.keymap").inoremap
local builtin = require("telescope.builtin")
local telescope = require("telescope")

telescope.setup({
    defaults = {
        layout_config = {
            horizontal = {
                preview_width = 80
            },
        },
    },
})



nnoremap("<leader>pf", builtin.find_files, {})
nnoremap("<leader>pg", builtin.git_files, {})
nnoremap("<leader>ht", builtin.help_tags, {})

nnoremap("<leader>ps", function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

nnoremap("<leader>lg", builtin.live_grep, {})
