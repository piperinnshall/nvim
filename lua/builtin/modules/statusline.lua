local M = {}

M.tabline = function()
    local label = " Explorer"
    local pad = 30 - #label
    local s = '%#Normal#' .. label .. string.rep(' ', pad > 0 and pad or 0)

    local cur = vim.fn.tabpagenr()
    local total = vim.fn.tabpagenr('$')

    for i = 1, total do
        local is_selected = (i == cur)
        local group = is_selected and 'TabLineSel' or 'TabLine'

        -- use background color (Normal) for entire tab
        s = s .. '%#' .. group .. '#'

        -- start tab switch click area
        s = s .. '%' .. i .. 'T'

        -- use VertSplit color just for the vertical bar
        s = s .. '%#VertSplit#│%#' .. group .. '# '

        local buflist = vim.fn.tabpagebuflist(i)
        local winnr = vim.fn.tabpagewinnr(i)
        local bufnum = buflist[winnr]
        local name = vim.fn.fnamemodify(vim.fn.bufname(bufnum), ':t')
        name = name == '' and '[No Name]' or name

        s = s .. name .. ' '
    end

    s = s .. '%#TabLineFill#%T'
    return s
end

return M
