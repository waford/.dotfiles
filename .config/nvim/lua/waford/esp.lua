local M = {}

M.serial_port = "/dev/ttyUSB0"

local function build(input)
    vim.fn.jobstart("idf.py build")    
end

local function on_event(bufnum, data)
      vim.api.nvim_buf_set_lines(bufnum, -1, -1, false, data)
      local buf_lines = vim.api.nvim_buf_line_count(bufnum)
        vim.api.nvim_win_set_cursor(0, {buf_lines,0})
end

local function monitor(port, bufnum)
    vim.api.nvim_buf_set_lines(bufnum, 0, -1, false, {})
    vim.fn.jobstart({"idf.py", "-p", port, "monitor"},{
        on_stdout = function(_, data)
            on_event(bufnum, data)
        end,
        on_stderr = function(_, data)
            on_event(bufnum, data)
        end,
    })
end


local function flash(port)
    vim.api.nvim_command("vsplit")
--    local bufnum = vim.api.nvim_get_current_buf()
    local win = vim.api.nvim_get_current_win()
    local bufnum = vim.api.nvim_create_buf(true, true)
    vim.api.nvim_win_set_buf(win,bufnum)
    print(bufnum)
    vim.fn.jobstart({"idf.py", "-p", port, "flash"},{
        on_stdout = function(_, data)
            on_event(bufnum, data)
        end,
        on_stderr = function(_, data)
            on_event(bufnum, data)
        end,
        on_exit = function()
       --     vim.api.nvim_buf_delete({bufnum})
            vim.api.nvim_win_close(win, true) 
            --monitor(port, bufnum)
        end,
    })
end

local function test() 
    if not M.serial_port then
        vim.ui.input({
            prompt = "Serial Port: ",
        }, function(input)
            if input then
                local f = io.open(input, "r")
                if f~=nil then 
                    io.close(f)
                    M.serial_port = input  
                else
                    print("The serial port", input, "either does not exist or is not open for reading")
                    return
                end
            end
        end)
    end
    print("Flashing on port", M.serial_port)
    flash(M.serial_port)
end

M.test = test

return M
