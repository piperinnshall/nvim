M = {}

M.win = {
    main = nil,
    ex = nil,
}

M.set_win_main = function()
    vim.api.nvim_set_current_win(M.win.main)
end

M.set_win_ex = function()
    vim.api.nvim_set_current_win(M.win.ex)
end

M.explore = function()
    M.win.main = vim.api.nvim_get_current_win()

    vim.cmd('leftabove vsplit')
    vim.cmd('vertical resize 30')
    vim.cmd('edit .')

    M.win.ex = vim.api.nvim_get_current_win()

    vim.defer_fn(M.set_win_main, 10)
end

M.win_open = function(dir, cfile)
    local entry  = cfile:gsub("/$", "")
    local parent = vim.fn.fnamemodify(dir, ":t")
    local cand   = vim.fn.fnamemodify(dir .. "/" .. entry, ":p")

    local target
    if vim.fn.isdirectory(cand) == 1 then
        target = cand
    elseif entry == parent then
        target = vim.fn.fnamemodify(dir, ":p")
    else
        target = cand
    end

    vim.api.nvim_set_current_win(M.win.main)

    if vim.fn.isdirectory(target) == 1 then
        vim.print(target .. " is a directory")
        return
    else
        vim.print(target .. " is a file")
        vim.cmd("edit " .. vim.fn.fnameescape(target))
        vim.defer_fn(M.set_win_ex, 10)
    end
end


return M
