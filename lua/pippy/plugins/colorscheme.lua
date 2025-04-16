return {
    'neanias/everforest-nvim',
    lazy = false,
    config = function()
        require('everforest').setup({
            background = 'hard',
        })
        vim.o.background = 'light'
        vim.cmd.colorscheme 'everforest'
    end,
}

