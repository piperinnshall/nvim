vim.g.maplocalleader        = ' '
vim.g.mapleader             = ' '
vim.g.netrw_banner          = 0
vim.g.undotree_WindowLayout = 3
vim.g.undotree_DiffAutoOpen = 0
vim.g.undotree_SplitWidth   = 50
vim.g.everforest_background = 'hard'
vim.o.swapfile              = false
vim.o.wrap                  = false
vim.o.number                = true
vim.o.rnu                   = true
vim.o.expandtab             = true
vim.o.smartindent           = true
vim.o.hlsearch              = true
vim.o.incsearch             = true
vim.o.spell                 = true
vim.o.tabstop               = 2
vim.o.shiftwidth            = 2
vim.o.scrolloff             = 8
vim.o.background            = 'light'
vim.o.winborder             = 'rounded'
vim.o.signcolumn            = 'yes'
vim.o.fillchars             = 'eob: '
vim.o.shell                 = '/etc/profiles/per-user/piperinnshall/bin/bash'

vim.lsp.enable({ 'clangd', 'lua_ls', 'nil_ls', 'rust_analyzer', 'intelephsense' })

vim.pack.add({ 'sainnhe/everforest' })
vim.pack.add({ 'tpope/vim-surround' })
vim.pack.add({ 'mbbill/undotree' })
vim.pack.add({ 'itchyny/calendar.vim' })
vim.pack.add({ 'mfussenegger/nvim-jdtls' })
vim.pack.add({ 'echasnovski/mini.pick' })
vim.pack.add({ 'echasnovski/mini.extra' })
vim.pack.add({ 'OXY2DEV/markview.nvim' })

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<cr>')
vim.keymap.set('n', '<C-c>', '<cmd>cclose<cr>')
vim.keymap.set('n', '[c', '<cmd>cprev<cr>')
vim.keymap.set('n', ']c', '<cmd>cnext<cr>')
vim.keymap.set('n', '[d', function() vim.diagnostic.jump({ count = -1, float = true }) end)
vim.keymap.set('n', ']d', function() vim.diagnostic.jump({ count = 1, float = true }) end)
vim.keymap.set('n', 'g=', vim.lsp.buf.format)
vim.keymap.set('n', 'gl', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>u', '<cmd>UndotreeToggle<cr>')
vim.keymap.set('n', '<C-p>', '<cmd>Pick files<cr>')
vim.keymap.set('n', '<C-g>', '<cmd>Pick grep_live<cr>')
vim.keymap.set('n', 'z=', require 'mini.extra'.pickers.spellsuggest)
vim.keymap.set('n', '<leader>p', [[:!pandoc '%:r.md' -o '%:r.pdf' &<CR>]])

require 'mini.pick'.setup({ window = { config = { height = math.floor(vim.o.lines / 6) } } })
require 'markview'.setup({ preview = { hybrid_modes = { 'n', 'i' } } })

vim.cmd [[ colorscheme everforest ]]
vim.cmd [[ hi StatusLine guibg=none ]]
vim.cmd [[ hi StatusLineNC guibg=none ]]
vim.cmd [[ hi NormalFloat guibg=none ]]
vim.cmd [[ hi FloatBorder guibg=none ]]
vim.cmd [[ hi MiniPickPrompt guibg=none ]]
vim.cmd [[ hi MiniPickBorderText guibg=none ]]

require 'codeforces'
