local harpoon = require("harpoon")
local nnoremap = require("waford.keymap").nnoremap

-- REQUIRED
harpoon:setup()
-- REQUIRED


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

nnoremap("<leader>ha", function() harpoon:list():add() end)
nnoremap("<leader>hc", function() harpoon:list():clear() end)

-- Toggle previous & next buffers stored within Harpoon list
nnoremap("<leader>hp", function() harpoon:list():prev() end)
nnoremap("<leader>hn", function() harpoon:list():next() end)

nnoremap("<leader>he", function() toggle_telescope(harpoon:list()) end,
    { desc = "Open harpoon window" })
