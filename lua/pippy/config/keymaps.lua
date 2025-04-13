local map = vim.keymap.set
local keyopts = { noremap = true, silent = true }

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

for _, key in ipairs(arrows) do map({ 'n', 'v', 'i', 's', 'x', 'o' }, key, '<Nop>', keyopts) end

-- Misc
map('n', '-', function() vim.cmd('Ex') vim.cmd('doautocmd User NetrwEnter') end, keyopts)
map('n', '<leader>l', '<cmd>Lazy<cr>', opts)
