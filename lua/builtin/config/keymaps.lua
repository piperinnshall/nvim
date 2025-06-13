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

-- Lsp

map('n', 'gl', function() vim.diagnostic.open_float() end, opts)
map('n', '[d', function() vim.diagnostic.goto_prev() end, opts)
map('n', ']d', function() vim.diagnostic.goto_next() end, opts)
