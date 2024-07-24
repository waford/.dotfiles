local harpoon = require("harpoon")
local nnoremap = require("waford.keymap").nnoremap

-- REQUIRED
harpoon:setup()
-- REQUIRED

nnoremap("<leader>ha", function() harpoon:list():add() end)

--vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
--vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end)
--vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end)
--vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
nnoremap("<leader>hp", function() harpoon:list():prev() end)
nnoremap("<leader>hn", function() harpoon:list():next() end)

-- basic telescope configuration
local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
    local file_paths = {}
    for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
    end

    require("telescope.pickers").new({}, {
        prompt_title = "Harpoon",
        finder = require("telescope.finders").new_table({
            results = file_paths,
        }),
        previewer = conf.file_previewer({}),
        sorter = conf.generic_sorter({}),
    }):find()
end

nnoremap("<leader>he", function() toggle_telescope(harpoon:list()) end,
    { desc = "Open harpoon window" })
