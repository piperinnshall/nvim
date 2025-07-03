return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    event = {
        'BufReadPre',
        'BufNewFile',
    },
    opts = {
        ensure_installed = {
            'bash',
            'c',
            'diff',
            'editorconfig',
            'git_config',
            'gitignore',
            'html',
            'java',
            'json',
            'kotlin',
            'lua',
            'markdown',
            'markdown_inline',
            'nix',
            'python',
            'query',
            'toml',
            'vim',
            'vimdoc',
            'xml',
            'zig',
        },
        sync_install = false,
        auto_install = true,
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false,
        },
    },
    config = function(_, opts)
        require('nvim-treesitter.configs').setup(opts)
    end,
}
