local g                 = vim.g
local opt               = vim.opt

g.maplocalleader        = ' '
g.mapleader             = ' '

g.have_nerd_font        = true

g.undotree_WindowLayout = 3
g.undotree_SplitWidth   = 50
g.undotree_DiffAutoOpen = 0

opt.swapfile            = false

opt.number              = true
opt.rnu                 = true

opt.tabstop             = 4
opt.softtabstop         = 4
opt.shiftwidth          = 4
opt.expandtab           = true
opt.smartindent         = true

opt.wrap                = false
opt.scrolloff           = 8

opt.hlsearch            = true
opt.incsearch           = true

opt.spell               = true
opt.spelllang           = { "en_us" }

opt.termguicolors       = true
opt.background          = 'dark'

opt.showmode            = false
opt.showtabline         = 1
opt.laststatus          = 3

opt.mouse               = 'a'

opt.shell               = '/etc/profiles/per-user/piperinnshall/bin/bash'
