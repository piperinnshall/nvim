local api         = vim.api
local fn          = vim.fn
local map         = vim.keymap.set
local cmd         = api.nvim_create_autocmd
local au          = api.nvim_create_augroup

-- Netrw
local netrw       = au('NetrwGroup', { clear = true })

local last_file   = ''

local netrw_track = function()
    local full = fn.expand('%:p')
    last_file = fn.fnamemodify(full, ':t')
end

local netrw_focus = function()
    local lines = fn.getline(1, fn.line('$'))
    if type(lines) ~= 'table' then return end
    for i, name in ipairs(lines) do
        if name == last_file then
            api.nvim_win_set_cursor(0, { i, 0 })
            return
        end
    end
end


cmd('BufEnter', {
    group    = netrw,
    callback = netrw_track,
})

cmd('User', {
    group    = netrw,
    pattern  = "NetrwEnter",
    callback = netrw_focus,
})

-- Lsp
local lsp = au('LspGroup', {})

-- K is mapped to vim.lsp.buf.hover()
-- "grn" is mapped in Normal mode to vim.lsp.buf.rename()
-- "gra" is mapped in Normal and Visual mode to vim.lsp.buf.code_action()
-- "grr" is mapped in Normal mode to vim.lsp.buf.references()
-- "gri" is mapped in Normal mode to vim.lsp.buf.implementation()
-- "gO" is mapped in Normal mode to vim.lsp.buf.document_symbol()
-- CTRL-S is mapped in Insert mode to vim.lsp.buf.signature_help()

local lsp_map = function(event)
    map('n', 'g=', function() vim.lsp.buf.format({ async = true }) end, { buffer = event.buf })
    map('n', 'gI', function() require('fzf-lua').lsp_implementations() end, { buffer = event.buf })
    map('n', 'gd', function() require('fzf-lua').lsp_definitions() end, { buffer = event.buf })
    map('n', 'gD', function() require('fzf-lua').lsp_declarations() end, { buffer = event.buf })
    map('n', 'go', function() require('fzf-lua').lsp_typedefs() end, { buffer = event.buf })
    map('n', 'gR', function() require('fzf-lua').lsp_references() end, { buffer = event.buf })
    map('n', 'ga', function() require('fzf-lua').lsp_code_actions() end, { buffer = event.buf })
    map('n', 'gf', function() require('fzf-lua').lsp_finder() end, { buffer = event.buf })
end

local lsp_cmp = function(event)
    local client = assert(vim.lsp.get_client_by_id(event.data.client_id))
    if client:supports_method('textDocument/completion') then
        local chars = {}; for i = 32, 126 do table.insert(chars, string.char(i)) end
        client.server_capabilities.completionProvider.triggerCharacters = chars
        vim.lsp.completion.enable(true, client.id, event.buf, { autotrigger = true })
    end
end

local lsp_attach = function(event)
    lsp_cmp(event)
    lsp_map(event)
end

cmd('LspAttach', {
    group = lsp,
    callback = lsp_attach,
})
