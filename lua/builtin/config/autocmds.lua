local api        = vim.api
local cmd        = api.nvim_create_autocmd
local au         = api.nvim_create_augroup
local lspg       = au('LspGroup', {})
local exg        = au('ExploreGroup', {})

local lsp        = function(event)
    local lsp = require('builtin.core.lsp')
    lsp.map(event)
    lsp.cmp(event)
end

local is_running = false

local ex = function(event)
    if vim.bo[0].filetype ~= 'netrw' then return end
    if is_running then return end
    is_running = true

    vim.defer_fn(function()
        local ex = require('builtin.modules.explorer')
        ex.map(event)
        ex.prev()
        is_running = false
    end, 20)  -- Delay long enough for events to settle
end

cmd('LspAttach', {
    group = lspg,
    callback = lsp,
})

cmd({ 'BufWinEnter', 'WinEnter' }, {
    group = exg,
    callback = ex,
})
