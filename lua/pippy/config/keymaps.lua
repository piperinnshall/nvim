local map    = vim.keymap.set
local opts   = { noremap = true, silent = true }

-- Disable Arrows

local arrows = {
    '<Down>',
    '<Left>',
    '<Right>',
    '<Up>',
    '<S-Down>',
    '<S-Left>',
    '<S-Right>',
    '<S-Up>',
}

for _, key in pairs(arrows) do map({ 'n', 'v', 'i', 's', 'x', 'o' }, key, '<Nop>', opts) end

-- Misc

map('n', '<Esc>', '<cmd>nohlsearch<cr>', opts)
map('n', '<leader>rc', '<cmd>e $MYVIMRC<cr>', opts)

-- Yank

map({ 'n', 'v' }, '<leader>p', '"+p', opts)
map({ 'n', 'v' }, '<leader>P', '"+P', opts)
map({ 'n', 'v' }, '<leader>y', '"+y', opts)
map({ 'n', 'v' }, '<leader>Y', '"+Y', opts)

-- Lsp

map('n', '[d', function() vim.diagnostic.jump({ count = -1, float = true }) end, opts)
map('n', ']d', function() vim.diagnostic.jump({ count = 1, float = true }) end, opts)
map('n', 'gl', vim.diagnostic.open_float, opts)

-- Plugins

map('n', '<leader>l', '<cmd>Lazy<cr>', opts)
map('n', '<leader>c', '<cmd>Calendar<cr>', opts)
map('n', '<leader>u', '<cmd>UndotreeToggle<cr>', opts)

-- Builtin

map('n', 'z=', function() require('fzf-lua').spell_suggest() end, opts)
map('n', 'q:', function() require('fzf-lua').command_history() end, opts)
map('n', 'q/', function() require('fzf-lua').search_history() end, opts)
map('n', 'q?', function() require('fzf-lua').search_history() end, opts)

-- Files
map('n', '<C-p>', function() require('fzf-lua').files() end, opts)
map('n', '<leader>fl', function() require('fzf-lua').live_grep() end, opts)

-- map('n', '<leader>fg', function() require('fzf-lua').git_files() end, opts)
-- map('n', '<leader>fd', function() require('fzf-lua').diagnostics_workspace() end, opts)
-- map('n', '<leader>fq', function() require('fzf-lua').quickfix() end, opts)
-- map('n', '<leader>fj', function() require('fzf-lua').jumps() end, opts)

