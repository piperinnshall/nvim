local M      = {}

local api    = vim.api

M.list       = {
    ['('] = ')',
    ['{'] = '}',
    ['['] = ']',
    ['"'] = '"',
    ["'"] = "'",
}

M.exclude    = {
    ['"'] = true,
    ["'"] = true,
}

M.inserted   = false

M.t          = function(i) return api.nvim_replace_termcodes(i, true, false, true) end
M.f          = function(i) return api.nvim_feedkeys(i, 'n', false) end

M.valid_pair = function(look)
    local col   = vim.fn.col('.')
    local line  = vim.fn.getline('.')
    local left  = line:sub(col - look, col - 1)
    local right = line:sub(col, col + look - 1)
    for open, close in pairs(M.list) do
        if look == 1 and left == open and right == close then
            return true, left, right
        elseif look == 2 and left == open .. ' ' and right == ' ' .. close then
            return true, left, right
        end
    end
    return false
end

M.valid_jump = function()
    if not M.inserted then return false end
    local col = vim.fn.col('.')
    local line = vim.fn.getline('.')
    local p = line:find('%)', col)
    if p then
        return true
    end
    return false
end

return M
