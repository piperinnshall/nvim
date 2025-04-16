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
                    vim.fn.expand '~/Developer/lua/neovim',
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
enable('luals')
