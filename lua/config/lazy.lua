-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.g.netrw_banner          = 0
vim.g.undotree_WindowLayout = 3
vim.g.undotree_DiffAutoOpen = 0
vim.g.undotree_SplitWidth   = 50
vim.o.swapfile              = false
vim.o.wrap                  = false
vim.o.number                = true
vim.o.rnu                   = true
vim.o.expandtab             = true
vim.o.smartindent           = true
vim.o.hlsearch              = true
vim.o.incsearch             = true
vim.o.spell                 = true
vim.o.exrc                  = true
vim.o.secure                = true
vim.o.tabstop               = 2
vim.o.shiftwidth            = 2
vim.o.scrolloff             = 8
vim.o.background            = 'light'
vim.g.everforest_background = 'hard'
vim.o.winborder             = 'rounded'
vim.o.signcolumn            = 'yes'
vim.o.fillchars             = 'eob: '
vim.o.shell                 = '/etc/profiles/per-user/piperinnshall/bin/bash'
vim.lsp.enable({ 'clangd', 'lua_ls', 'nil_ls', 'rust_analyzer' })
vim.keymap.set('n', '<leader>e', '<cmd>Ex<cr>')
vim.keymap.set({ 'n', 'v' }, '<leader>y', '"+y')
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<cr>')
vim.keymap.set('n', '<C-c>', '<cmd>cclose<cr>')
vim.keymap.set('n', '[d', function() vim.diagnostic.jump({ count = -1, float = true }) end)
vim.keymap.set('n', ']d', function() vim.diagnostic.jump({ count = 1, float = true }) end)
vim.keymap.set('n', '<C-p>', '<cmd>FzfLua files<cr>')
vim.keymap.set('n', '<C-g>', '<cmd>FzfLua live_grep<cr>')
vim.keymap.set('n', 'z=', '<cmd>FzfLua spell_suggest<cr>')

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugins" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  -- checker = { enabled = true },
})
