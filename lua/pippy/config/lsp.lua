local lsp = vim.lsp
local config = lsp.config
local enable = lsp.enable

config['luals'] = {
    cmd = { 'lua-language-server' },
    filetypes = { 'lua' },
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
            },
            workspace = {
                checkThirdParty = false,
                library = {
                    vim.env.VIMRUNTIME,
                    vim.fn.expand '~/Developer/lua',
                },
            },
            diagnostics = {
                globals = {
                    'vim',
                },
            },
        },
    },
}
config['nixls'] = {
    cmd = { 'nil' },
    filetypes = { 'nix' },
}
config['cls'] = {
    cmd = { 'clangd' },
    filetypes = { 'c' },
}
config['rustls'] = {
    cmd = { 'rust-analyzer' },
    filetypes = { 'rust' }
}

enable('luals')
enable('nixls')
enable('cls')
enable('rustls')
