local api           = vim.api
local fn            = vim.fn
local map           = vim.keymap.set
local cmd           = api.nvim_create_autocmd
local au            = api.nvim_create_augroup
local netrw         = au('NetrwGroup', { clear = true })
local lsp           = au('LspGroup', {})

-- Netrw

local last_file = ''

local netrw_track = function()
    local full = fn.expand('%:p')
    last_file = fn.fnamemodify(full, ':t')
end

local netrw_focus = function()
    local lines = fn.getline(1, fn.line('$'))
    if type(lines) ~= 'table' then return end
    for i, name in ipairs(lines) do
        local clean_name = name:gsub("[*/=@|]+$", "")
        if clean_name == last_file then
            api.nvim_win_set_cursor(0, { i, 0 })
            return
        end
    end
end

-- Lsp

-- K is mapped to vim.lsp.buf.hover()
-- "grn" is mapped in Normal mode to vim.lsp.buf.rename()
-- "gra" is mapped in Normal and Visual mode to vim.lsp.buf.code_action()
-- "grr" is mapped in Normal mode to vim.lsp.buf.references()
-- "gri" is mapped in Normal mode to vim.lsp.buf.implementation()
-- "gO" is mapped in Normal mode to vim.lsp.buf.document_symbol()
-- CTRL-S is mapped in Insert mode to vim.lsp.buf.signature_help()

local lsp_map = function(event)
    map('n', 'grr', function() require('fzf-lua').lsp_references() end, { buffer = event.buf })
    map('n', 'gra', function() require('fzf-lua').lsp_code_actions() end, { buffer = event.buf })
    map('n', 'gd', function() require('fzf-lua').lsp_definitions() end, { buffer = event.buf })
    map('n', 'gD', function() require('fzf-lua').lsp_declarations() end, { buffer = event.buf })
    map('n', 'go', function() require('fzf-lua').lsp_typedefs() end, { buffer = event.buf })
    map('n', 'gf', function() require('fzf-lua').lsp_finder() end, { buffer = event.buf })
    map('n', 'g=', function() vim.lsp.buf.format({ async = true }) end, { buffer = event.buf })
end

local lsp_attach = function(event)
    lsp_map(event)
end


-- Autocmd

cmd('BufEnter', {
    group       = netrw,
    callback    = netrw_track,
})

cmd('User', {
    pattern     = "NetrwEnter",
    group       = netrw,
    callback    = netrw_focus,
})

cmd('LspAttach', {
    group       = lsp,
    callback    = lsp_attach,
})
