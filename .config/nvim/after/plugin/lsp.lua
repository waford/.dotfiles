local lsp = require('lsp-zero')


lsp.preset('recommended')

lsp.ensure_installed({
    'sumneko_lua',
    'rust_analyzer',
})

-- Enable latex completions
local cmp_sources = lsp.defaults.cmp_sources()

table.insert(cmp_sources, {
    name = "latex_symbols",
      option = {
        strategy = 0, -- mixed
      }})

lsp.setup_nvim_cmp({
    sources = cmp_sources
})


lsp.setup()
