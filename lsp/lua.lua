return {
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
