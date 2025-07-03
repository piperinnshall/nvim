local M          = {}

M.list           = require 'utils.autopair.util'.list
local exclude    = require 'utils.autopair.util'.exclude
local inserted   = require 'utils.autopair.util'.inserted
local f          = require 'utils.autopair.util'.f
local t          = require 'utils.autopair.util'.t
local valid_pair = require 'utils.autopair.util'.valid_pair
local valid_jump = require 'utils.autopair.util'.valid_jump

M.left           = function(paren)
    return function()
        f(t(paren .. M.list[paren] .. '<Left>'))
    end
end

M.space          = function()
    local valid1, left, _ = valid_pair(1)
    if valid1 and not exclude[left] then
        f(t('<Space><Space><Left>'))
        return
    end
    f(t('<Space>'))
end

M.backspace      = function()
    local valid1 = valid_pair(1)
    local valid2, left = valid_pair(2)
    if valid1 then
        f(t('<Right><BS><BS>'))
        return
    end
    if valid2 and not exclude[left] then
        f(t('<Right><BS>'))
        return
    end
    f(t('<BS>'))
end

-- M.jump = function(paren)
--     if valid_jump() and inserted then
--         f(t('f' .. paren))
--         return
--     end
--     return paren
-- end

return M
