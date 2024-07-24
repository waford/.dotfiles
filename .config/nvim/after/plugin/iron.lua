local iron = require("iron.core")
local nnoremap = require("waford.keymap").nnoremap
local vnoremap = require("waford.keymap").vnoremap
local tnoremap = require("waford.keymap").tnoremap


iron.setup {
  config = {
    -- Whether a repl should be discarded or not
    scratch_repl = true,
    -- Your repl definitions come here
    repl_definition = {
      sh = {
        -- Can be a table or a function that
        -- returns a table (see below)
        command = {"bash"}
      },
      python = {
        command = { "python3" },  -- or { "ipython", "--no-autoindent" }
        format = require("iron.fts.common").bracketed_paste_python
      },
      julia = {
        command = { "julia" }
      },
    },
    -- How the repl window will be displayed
    -- See below for more information
    repl_open_cmd = require('iron.view').split.botright(20),
    close_window_on_exit = true,
  },
  -- Iron doesn't set keymaps by default anymore.
  -- You can set them here or manually add keymaps to the functions in iron.core
  keymaps = {
    send_motion = "<space>sc",
    visual_send = "<space>sc",
    send_file = "<space>sf",
    send_line = "<space>sl",
    send_paragraph = "<space>sp",
    send_until_cursor = "<space>su",
    send_mark = "<space>sm",
    mark_motion = "<space>mc",
    mark_visual = "<space>mc",
    remove_mark = "<space>md",
    cr = "<space>s<cr>",
    interrupt = "<space>s<space>",
    exit = "<space>sq",
    clear = "<space>cl",
  },
  -- If the highlight is on, you can change how it looks
  -- For the available options, check nvim_set_hl
  highlight = {
    italic = true
  },
  ignore_blank_lines = true, -- ignore blank lines when sending visual select lines
}

-- iron also has a list of commands, see :h iron-commands for all available commands
nnoremap('<leader>rs', '<cmd>IronRepl<cr>')
nnoremap('<leader>rr', '<cmd>IronRestart<cr>')
nnoremap('<leader>rf', '<cmd>IronFocus<cr>')
nnoremap('<leader>rh', '<cmd>IronHide<cr>')
tnoremap("<Esc>", '<C-\\><C-N>')

nnoremap("<leader>rf", iron.send_file)
nnoremap("<leader>rl", iron.send_line)
vnoremap("<leader>rv", iron.visual_send)


