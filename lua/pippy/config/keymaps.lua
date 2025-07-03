local map  = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Disable Arrows

local arrows = {
    '<Up>',
    '<Down>',
    '<Left>',
    '<Right>',
    '<S-Up>',
    '<S-Down>',
    '<S-Left>',
    '<S-Right>',
}

for _, key in pairs(arrows) do map({ 'n', 'v', 'i', 's', 'x', 'o' }, key, '<Nop>', opts) end

-- Misc

map('n', '-', require 'utils.netrw'.focus, opts)
map('i', 'jk', '<Esc>', opts)
map('n', '<Esc>', '<cmd>nohlsearch<cr>', opts)
map('n', '<leader>rc', '<cmd>e $MYVIMRC<cr>', opts)
map('n', '<leader>l', '<cmd>Lazy<cr>', opts)
map('n', '<leader>u', '<cmd>UndotreeToggle<cr>', opts)

-- Yank

map({ 'n', 'v' }, '<leader>y', '"+y', opts)
map({ 'n', 'v' }, '<leader>Y', '"+Y', opts)
map({ 'n', 'v' }, '<leader>p', '"+p', opts)
map({ 'n', 'v' }, '<leader>P', '"+P', opts)

-- Lsp

map('n', 'gl', vim.diagnostic.open_float, opts)
map('n', '[d', function() vim.diagnostic.jump({ count = -1, float = true }) end, opts)
map('n', ']d', function() vim.diagnostic.jump({ count = 1, float = true }) end, opts)

-- Files

map('n', '<leader>ff', function() require('fzf-lua').files() end, opts)
map('n', '<leader>fl', function() require('fzf-lua').live_grep() end, opts)
map('n', '<leader>fg', function() require('fzf-lua').git_files() end, opts)
map('n', '<leader>fd', function() require('fzf-lua').diagnostics_workspace() end, opts)
map('n', '<leader>fp', function() require('fzf-lua').complete_path() end, opts)
map('n', '<leader>fb', function() require('fzf-lua').complete_bline() end, opts)
map('n', '<leader>fq', function() require('fzf-lua').quickfix() end, opts)
map('n', '<leader>fj', function() require('fzf-lua').jumps() end, opts)
map('n', '<leader>fc', function() require('fzf-lua').command_history() end, opts)
map('n', '<leader>fs', function() require('fzf-lua').spell_suggest() end, opts)
