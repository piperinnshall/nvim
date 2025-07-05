local api        = vim.api
local map        = vim.keymap.set
local cmd        = api.nvim_create_autocmd
local au         = api.nvim_create_augroup

-- Eob

local fill_chars = function()
    vim.wo.fillchars = 'eob: '
end

-- Lsp

-- K is mapped to vim.lsp.buf.hover()
-- "grr" is mapped in Normal mode to vim.lsp.buf.references()
-- "gra" is mapped in Normal and Visual mode to vim.lsp.buf.code_action()
-- "grn" is mapped in Normal mode to vim.lsp.buf.rename()
-- "gri" is mapped in Normal mode to vim.lsp.buf.implementation()
-- "gO" is mapped in Normal mode to vim.lsp.buf.document_symbol()
-- CTRL-S is mapped in Insert mode to vim.lsp.buf.signature_help()

local lsp_map    = function(event)
    map('n', 'grr', function() require('fzf-lua').lsp_references() end, { buffer = event.buf })
    map('n', 'gra', function() require('fzf-lua').lsp_code_actions() end, { buffer = event.buf })
    map('n', 'gd', function() require('fzf-lua').lsp_definitions() end, { buffer = event.buf })
    map('n', 'gD', function() require('fzf-lua').lsp_declarations() end, { buffer = event.buf })
    map('n', 'go', function() require('fzf-lua').lsp_typedefs() end, { buffer = event.buf })
    map('n', 'gf', function() require('fzf-lua').lsp_finder() end, { buffer = event.buf })
    map('n', 'g=', function() vim.lsp.buf.format({ async = true }) end, { buffer = event.buf })
end

-- Autocmd

local eob_group  = au('EobGroup', { clear = true })
local lsp_group  = au('LspGroup', { clear = true })

cmd('BufWinEnter', {
    group = eob_group,
    callback = fill_chars,
})

cmd('LspAttach', {
    group    = lsp_group,
    callback = lsp_map,
})
