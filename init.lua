vim.g.maplocalleader        = ' '
vim.g.mapleader             = ' '
vim.g.everforest_background = 'hard'
vim.g.netrw_banner          = 0
vim.g.undotree_WindowLayout = 3
vim.g.undotree_DiffAutoOpen = 0
vim.g.gitgutter_map_keys    = 0
vim.g.undotree_SplitWidth   = 50
vim.o.swapfile              = false
vim.o.wrap                  = false
vim.o.number                = true
vim.o.rnu                   = true
vim.o.expandtab             = true
vim.o.smartindent           = true
vim.o.hlsearch              = true
vim.o.incsearch             = true
vim.o.ignorecase            = true
vim.o.smartcase             = true
vim.o.exrc                  = true
vim.o.secure                = true
vim.o.spell                 = true
vim.o.undofile              = true
vim.o.tabstop               = 2
vim.o.shiftwidth            = 2
vim.o.scrolloff             = 8
vim.o.updatetime            = 50
vim.o.background            = 'light'
vim.o.winborder             = 'rounded'
vim.o.signcolumn            = 'yes'
vim.o.foldcolumn            = '1'
vim.o.foldtext              = 'getline(v:foldstart)'
vim.o.shell                 = '/etc/profiles/per-user/piperinnshall/bin/bash'
vim.opt.fillchars           = {
    eob = ' ',
    fold = ' ',
    foldclose = '>',
    foldopen = '⌄',
}

vim.lsp.enable({ 'clangd', 'lua_ls', 'nil_ls', 'processing', 'rust_analyzer' })

vim.pack.add({ 'ibhagwan/fzf-lua' })
vim.pack.add({ 'mfussenegger/nvim-jdtls' })
vim.pack.add({ 'sainnhe/everforest' })
vim.pack.add({ 'mbbill/undotree' })
vim.pack.add({ 'tpope/vim-surround' })
vim.pack.add({ 'vim-gitgutter' })

vim.keymap.set({ 'n', 'v' }, '<leader>y', '"+y')
vim.keymap.set({ 'n', 'v' }, '<leader>e', '<cmd>Ex<cr>')
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<cr>')
vim.keymap.set('n', '<C-c>', '<cmd>cclose<cr>')
vim.keymap.set('n', 'g=', function() vim.lsp.buf.format({ async = true }) end)
vim.keymap.set('n', '[d', function() vim.diagnostic.jump({ count = -1, float = true }) end)
vim.keymap.set('n', ']d', function() vim.diagnostic.jump({ count = 1, float = true }) end)

vim.keymap.set('n', '<leader>u', '<cmd>UndotreeToggle<cr>')
vim.keymap.set('n', ']h', '<cmd>GitGutterNextHunk<cr>')
vim.keymap.set('n', '[h', '<cmd>GitGutterPrevHunk<cr>')
vim.keymap.set('n', '<C-s>', '<cmd>GitGutterStageHunk<cr>')
vim.keymap.set('n', '<C-h>', '<cmd>GitGutterPreviewHunk<cr>')
vim.keymap.set('n', '<C-p>', '<cmd>FzfLua files<cr>')
vim.keymap.set('n', '<C-g>', '<cmd>FzfLua live_grep<cr>')
vim.keymap.set('n', 'z=', '<cmd>FzfLua spell_suggest<cr>')
vim.keymap.set('n', 'gra', '<cmd>FzfLua lsp_code_actions<cr>')

require 'fzf-lua'.setup({ 'borderless-full', winopts = { backdrop = 100 } })

vim.cmd [[ colo everforest ]]
vim.cmd [[ hi StatusLineNC  guibg=none ]]
vim.cmd [[ hi StatusLine    guibg=none ]]
vim.cmd [[ hi NormalFloat   guibg=none ]]
vim.cmd [[ hi FloatBorder   guibg=none ]]
vim.cmd [[ hi Folded        guibg=none ]]
