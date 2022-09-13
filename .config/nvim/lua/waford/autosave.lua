local start_pdflatex = function(filename)
    local pdflatex_flags = '-interaction=nonstopmode'
    local dot_index = string.find(filename, ".tex")
    local bibtex_file = string.sub(filename, 0, dot_index - 1)
    local pdflatex_cmd = "pdflatex " .. pdflatex_flags .. " " .. filename .. ";"
    local bibtex_cmd = "bibtex " .. bibtex_file .. ";"
    local tex_compile_cmd = pdflatex_cmd .. bibtex_cmd .. pdflatex_cmd .. pdflatex_cmd

    local job_id = vim.fn.jobstart(tex_compile_cmd)
    vim.fn.jobwait({job_id})
end

vim.api.nvim_create_autocmd("BufWritePost", {
    group = vim.api.nvim_create_augroup("latex", { clear = true }),
    pattern = "*.tex",
    callback = function()
        local filename = vim.fn.getreg('%')
        start_pdflatex(filename)
    end,
})

