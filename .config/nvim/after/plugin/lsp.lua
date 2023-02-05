local nnoremap = require("waford.keymap").nnoremap
local lsp = require('lsp-zero')
local cmp_sources = lsp.defaults.cmp_sources()

lsp.ensure_installed({
    'sumneko_lua',
    'rust_analyzer',
    'latex_symbols',
})

local remove_latex_symbols = function()
    for key, value in pairs(cmp_sources) do
        if value.name == "latex_symbols" then
            table.remove(cmp_sources, key)
            return true
        end
    end
    return false
end

local add_latex_symbols = function()
    table.insert(cmp_sources, {
        name = "latex_symbols",
        option = {
            strategy = 0, -- mixed
        }})
end

local toggle_latex_symbols = function()
    if not remove_latex_symbols() then
        add_latex_symbols()
    end

    lsp.setup_nvim_cmp({
        sources = cmp_sources
    })

    lsp.setup()
end


-- LSP Kepmappings
nnoremap("<leader>L", toggle_latex_symbols)
--

lsp.preset('recommended')

lsp.setup()
