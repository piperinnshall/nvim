return {
    'OXY2DEV/markview.nvim',
    ft = 'markdown',
    lazy = false,
    priority = 999,
    opts = {
        preview = {
            icon_provider = 'mini',
            modes = { 'n', 'i', 'no', 'c' },
            hybrid_modes = { 'n', 'i' },
        },
    },
}
