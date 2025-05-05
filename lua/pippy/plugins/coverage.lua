return {
    'andythigpen/nvim-coverage',
    dependencies = {
        'nvim-lua/plenary.nvim'
    },
    event = {
        'BufReadPre',
        'BufNewFile',
    },
    opts={
        auto_reload = true,
    },
}
