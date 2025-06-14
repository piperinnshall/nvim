local M = {}

M.win = {
    main = nil,
    ex = nil,
}

M.explore = function()
    M.win.main = vim.api.nvim_get_current_win()
    vim.cmd('leftabove vsplit')
    vim.cmd('vertical resize 30')
    vim.cmd('edit .')
    M.win.ex = vim.api.nvim_get_current_win()
end

M.explore()

M.map = function(event)
    vim.keymap.set('n', '<cr>', function()
        if vim.fn.expand('<cfile>'):sub(-1) == '/' then
            vim.api.nvim_feedkeys(
                vim.api.nvim_replace_termcodes('<Plug>NetrwLocalBrowseCheck', true, false, true),
                'n',
                false
            )
        else
            vim.cmd('silent! call <SNR>26_NetrwPrevWinOpen(1)')
            vim.defer_fn(function() vim.api.nvim_set_current_win(M.win.ex) end, 1)
        end
    end, { buffer = event.buf })
end

M.prev = function()
    vim.defer_fn(function() vim.api.nvim_set_current_win(M.win.main) end, 10)
    vim.defer_fn(function() vim.api.nvim_set_current_win(M.win.ex) end, 20)
end

return M
