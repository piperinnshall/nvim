local api         = vim.api
local map         = vim.keymap.set
local cmd         = api.nvim_create_autocmd
local au          = api.nvim_create_augroup
local lsp         = au('LspGroup', {})
local explore     = au('ExploreGroup', {})

-- Lsp

-- K is mapped to vim.lsp.buf.hover()
-- "grn" is mapped in Normal mode to vim.lsp.buf.rename()
-- "gra" is mapped in Normal and Visual mode to vim.lsp.buf.code_action()
-- "grr" is mapped in Normal mode to vim.lsp.buf.references()
-- "gri" is mapped in Normal mode to vim.lsp.buf.implementation()
-- "gO" is mapped in Normal mode to vim.lsp.buf.document_symbol()
-- CTRL-S is mapped in Insert mode to vim.lsp.buf.signature_help()

local lsp_map     = function(event)
    map('n', 'g=', function() vim.lsp.buf.format({ async = true }) end, { buffer = event.buf })
end

local lsp_cmp     = function(event)
    local client = assert(vim.lsp.get_client_by_id(event.data.client_id))
    if client:supports_method('textDocument/completion') then
        local chars = {}; for i = 32, 126 do table.insert(chars, string.char(i)) end
        client.server_capabilities.completionProvider.triggerCharacters = chars
        vim.lsp.completion.enable(true, client.id, event.buf, { autotrigger = true })
    end
end

local lsp_attach  = function(event)
    lsp_cmp(event)
    lsp_map(event)
end

-- Explore

local explore_map = function()
    if vim.bo.filetype ~= 'netrw' then return end

    map("n", "<CR>", function()
        local dir, cfile = vim.b.netrw_curdir, vim.fn.expand("<cfile>")
        require('builtin.modules.explorer').win_open(dir, cfile)
    end, { buffer = true })
end


local win_enter = function()
    vim.defer_fn(explore_map, 100)
end

-- Autocmd

cmd('LspAttach', {
    group    = lsp,
    callback = lsp_attach,
})

cmd('WinEnter', {
    group = explore,
    callback = win_enter
})
