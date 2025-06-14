local lsp = vim.lsp
local diagnostic = vim.diagnostic
local enable = lsp.enable
local config = diagnostic.config

enable({
    'c',
    'lua',
    'nix',
    'rust',
})

config({})

local M = {}

M.map = function(event)
    vim.keymap.set('n', 'g=', function() vim.lsp.buf.format({ async = true }) end, { buffer = event.buf })
end

M.cmp = function(event)
    local client = assert(vim.lsp.get_client_by_id(event.data.client_id))
    if client:supports_method('textDocument/completion') then
        local chars = {}; for i = 32, 126 do table.insert(chars, string.char(i)) end
        client.server_capabilities.completionProvider.triggerCharacters = chars
        vim.lsp.completion.enable(true, client.id, event.buf, { autotrigger = true })
    end
end

return M
