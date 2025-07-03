local M = {}

local last_file = ''

M.track = function()
    local full = vim.fn.expand('%:p')
    last_file = vim.fn.fnamemodify(full, ':t')
end

M.focus = function()
    vim.cmd [[ Explore ]]
    local lines = vim.fn.getline(1, vim.fn.line('$'))
    if type(lines) ~= 'table' then return end
    for i, name in ipairs(lines) do
        if name:gsub('[*/=@|]+$', '') == last_file then
            vim.api.nvim_win_set_cursor(0, { i, 0 })
            return
        end
    end
end

return M
