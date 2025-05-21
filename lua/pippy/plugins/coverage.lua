return {
    'andythigpen/nvim-coverage',
    event = {
        'BufReadPre',
        'BufNewFile',
    },
    opts={
        auto_reload = true,
    },
}
