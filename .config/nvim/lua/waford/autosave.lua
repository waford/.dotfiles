vim.api.nvim_create_autocmd("BufWritePost", {
    group = vim.api.nvim_create_augroup("latex", { clear = true }),
    pattern = "*.tex",
    callback = function()
        local filename = vim.fn.getreg('%')
        local pdflatex_flags = '-interaction=nonstopmode'
        vim.fn.jobstart({"pdflatex", pdflatex_flags, filename}, {
            on_exit = function()
                print("Created pdf of " .. filename)
            end,
        })
    end,
})
