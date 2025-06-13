local g              = vim.g
local opt            = vim.opt
local cmd            = vim.cmd

g.maplocalleader     = ' '
g.mapleader          = ' '

g.netrw_list_hide    = '^\\./\\|\\../'
-- g.netrw_browse_split = 4
g.netrw_altv         = 1
g.netrw_liststyle    = 3
g.netrw_banner       = 0
g.netrw_keepdir      = 0

opt.swapfile         = false

opt.number           = true
opt.rnu              = true

opt.tabstop          = 4
opt.softtabstop      = 4
opt.shiftwidth       = 4
opt.expandtab        = true
opt.smartindent      = true

opt.wrap             = false
opt.scrolloff        = 8

opt.hlsearch         = false
opt.incsearch        = true

-- opt.mouse = ''

opt.completeopt      = { 'menuone', 'noinsert', 'fuzzy' }

opt.showtabline      = 2
opt.tabline = '%!v:lua.require("builtin.modules.statusline").tabline()'

opt.termguicolors    = true
opt.background       = 'dark'

cmd [[
    colorscheme retrobox
    highlight EndOfBuffer guifg=bg
]]
