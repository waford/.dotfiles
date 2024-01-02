print("Autosave Loaded")
local start_pdflatex = function(filename)
    local pdflatex_flags = '-interaction=nonstopmode'
    local dot_index = string.find(filename, ".tex")
    local bibtex_file = string.sub(filename, 0, dot_index - 1)
    local pdflatex_cmd = "pdflatex " .. pdflatex_flags .. " " .. filename
    local bibtex_cmd = "bibtex " .. bibtex_file
    local tex_compile_cmd = pdflatex_cmd .. bibtex_cmd .. pdflatex_cmd .. pdflatex_cmd
    --vim.fn.jobstart({pdflatex_cmd, bibtex_cmd, pdflatex_cmd, pdflatex_cmd}, {
    --lol this is so stupid
      vim.fn.jobstart({"pdflatex", pdflatex_flags, filename}, { 
          on_exit = function()
              vim.fn.jobstart({"bibtex", bibtex_file}, {
                on_exit = function()
                  vim.fn.jobstart({"pdflatex", pdflatex_flags, filename}, {
                    on_exit = function()
                      vim.fn.jobstart({"pdflatex", pdflatex_flags, filename})
                    end
                  })
                end
              })
          end
      })
end

vim.api.nvim_create_autocmd("BufWritePost", {
    group = vim.api.nvim_create_augroup("latex", { clear = true }),
    pattern = "*.tex",
    callback = function()
        local filename = vim.fn.getreg('%')
        start_pdflatex(filename)
    end,
})


