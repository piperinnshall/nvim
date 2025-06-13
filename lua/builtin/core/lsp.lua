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
