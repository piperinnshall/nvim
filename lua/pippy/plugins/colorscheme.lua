return {
    'nyoom-engineering/oxocarbon.nvim',
    dependencies = {
        'folke/tokyonight.nvim',
        'Mofiqul/vscode.nvim',
        'NLKNguyen/papercolor-theme',
        'sainnhe/everforest'
    },
    name = 'oxocarbon',
    lazy = false,
    config = function()
        vim.o.background = "light"
        vim.cmd.colorscheme 'oxocarbon'
    end
}
