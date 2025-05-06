local api    = vim.api
local fn     = vim.fn
local map    = vim.keymap.set
local opts   = { noremap = true, silent = true }

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

for _, key in ipairs(arrows) do map({ 'n', 'v', 'i', 's', 'x', 'o' }, key, '<Nop>', opts) end

-- Misc
map('n', '-', function()
    vim.cmd('Ex')
    vim.cmd('doautocmd User NetrwEnter')
end, opts)
map('n', '<leader>l', '<cmd>Lazy<cr>', opts)
map('n', '<leader>u', '<cmd>UndotreeToggle<cr>', opts)

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

-- Lsp
map('n', 'gl', function() vim.diagnostic.open_float() end, opts)
map('n', '[d', function() vim.diagnostic.goto_prev() end, opts)
map('n', ']d', function() vim.diagnostic.goto_next() end, opts)
