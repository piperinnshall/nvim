return {
    'sainnhe/everforest',
    name = 'everforest',
    lazy = false,
    config = function()
        vim.o.background = "light"
        vim.cmd.colorscheme 'everforest'
    end
}
