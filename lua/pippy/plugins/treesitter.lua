return {
    'nvim-treesitter/nvim-treesitter',
    branch = 'master',
    lazy = 'VeryLazy',
    build = ':TSUpdate',
    config = function()
        require 'nvim-treesitter.configs'.setup {
            ensure_installed = { 'nix', 'rust', },
            sync_install = false,
            auto_install = false,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
        }
    end
}
