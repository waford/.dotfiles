local nnoremap = require("waford.keymap").nnoremap
local inoremap = require("waford.keymap").inoremap
local builtin = require("telescope.builtin")
local telescope = require("telescope")

telescope.setup({
    defaults = {
        file_ignore_patterns = {
            "build",
            "target",
        },
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
nnoremap("<leader>pp", builtin.planets, {})

nnoremap("<leader>pS", function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

nnoremap("<leader>ps", builtin.grep_string)

nnoremap("<leader>lg", builtin.live_grep, {})

nnoremap("<leader>gg", builtin.git_commits, {})
nnoremap("<leader>bc", builtin.git_bcommits, {})
nnoremap("<leader>ss", builtin.spell_suggest, {})
nnoremap("<leader>ds", builtin.lsp_document_symbols, {})
nnoremap("<leader>qf", builtin.quickfix, {})
