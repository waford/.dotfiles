function SetColor(color)
    color = color or "nightfox"
    vim.cmd.colorscheme(color)
    --    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    --    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    --    vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
end

--SetColor("carbonfox")
