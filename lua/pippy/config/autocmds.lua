local api       = vim.api
local map       = vim.keymap.set
local cmd       = api.nvim_create_autocmd

-- K is mapped to vim.lsp.buf.hover()
-- "grn" is mapped in Normal mode to vim.lsp.buf.rename()
-- "grr" is mapped in Normal mode to vim.lsp.buf.references()
-- "gra" is mapped in Normal and Visual mode to vim.lsp.buf.code_action()
-- "gri" is mapped in Normal mode to vim.lsp.buf.implementation()
-- "gd" is mapped in Normal mode to vim.lsp.buf.definitions()
-- "gD" is mapped in Normal mode to vim.lsp.buf.declarations()
-- "gT" is mapped in Normal mode to vim.lsp.buf.type_definion()
-- "gO" is mapped in Normal mode to vim.lsp.buf.document_symbol()
-- CTRL-S is mapped in Insert mode to vim.lsp.buf.signature_help()

local lsp_map   = function(event)
    map('n', 'grr', function() require('fzf-lua').lsp_references() end, { buffer = event.buf })
    map('n', 'gra', function() require('fzf-lua').lsp_code_actions() end, { buffer = event.buf })
    map('n', 'gri', function() require('fzf-lua').lsp_implementations() end, { buffer = event.buf })
    map('n', 'gd', function() require('fzf-lua').lsp_definitions() end, { buffer = event.buf })
    map('n', 'gD', function() require('fzf-lua').lsp_declarations() end, { buffer = event.buf })
    map('n', 'gT', function() require('fzf-lua').lsp_typedefs() end, { buffer = event.buf })
    map('n', 'gO', function() require('fzf-lua').lsp_document_symbols() end, { buffer = event.buf })
    map('n', 'g=', function() vim.lsp.buf.format({ async = true }) end, { buffer = event.buf })
    -- map('n', 'gf', function() require('fzf-lua').lsp_finder() end, { buffer = event.buf })
end

cmd('BufWinEnter', {
    callback = function()
        vim.wo.fillchars = 'eob: '
    end

})

cmd('LspAttach', {
    callback = lsp_map,
})

