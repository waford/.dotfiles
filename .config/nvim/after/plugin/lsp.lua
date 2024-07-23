local nnoremap = require("waford.keymap").nnoremap
local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)


require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
      lsp = {
         "clangd",
         "cmake-language-server",
         "lua-language-server",
         "python-lsp-server",
         "pyright",
    },
    formatter = {
        "black",
    },
  },
  handlers = {
    lsp_zero.default_setup,
    lua_ls = function()
        local lua_opts = lsp_zero.nvim_lua_ls()
        require('lspconfig').lua_ls.setup(lua_opts)
    end,
    clangd = function()
        require('lspconfig').clangd.setup({})
        nnoremap("<leader><Tab>", "<cmd>ClangdSwitchSourceHeader<CR>")
    end,
  }
})

local cmp = require('cmp')
local cmp_action = require("lsp-zero").cmp_action()

require('luasnip.loaders.from_vscode').lazy_load()

cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
    {name = 'luasnip'},
    {name = "buffer"},
    {name = "latex_symbols",
        option = {
            strategy = 1, -- Julia (0 -- mixed, 2 -- latex)
        },
    },
  },
  mapping = cmp.mapping.preset.insert({
      ["<CR>"] = cmp.mapping.confirm({select = false}),
      ["<Tab>"] = cmp_action.luasnip_supertab(),
      ["<S-Tab>"] = cmp_action.luasnip_shift_supertab(),
  }),

  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
})



