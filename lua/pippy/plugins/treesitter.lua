return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    priority = 50,
    build = ':TSUpdate',
    config = function()
        require 'nvim-treesitter.configs'.setup {
            ensure_installed = { 'nix', 'rust', 'java', },
            sync_install = false,
            auto_install = false,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
        }
    end
}
