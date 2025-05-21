local g = vim.g
local opt = vim.opt

g.maplocalleader = ' '
g.mapleader = ' '

g.netrw_banner = 0
g.netrw_list_hide = '^\\./\\|\\../'
g.netrw_keepdir = 0

opt.swapfile = false

opt.number = true
opt.rnu = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

opt.wrap = false
opt.scrolloff = 8

opt.hlsearch = false
opt.incsearch = true

opt.termguicolors = true
opt.background = 'light'

opt.mouse = ''

opt.completeopt = { 'menuone', 'noinsert', 'fuzzy' }
