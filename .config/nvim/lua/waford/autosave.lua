vim.api.nvim_create_autocmd("BufWritePost", {
    group = vim.api.nvim_create_augroup("latex", { clear = true }),
    callback = function()
        print("Wow, we saved a file")
    end
})
