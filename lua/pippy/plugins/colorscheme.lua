return {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
        vim.cmd [[
        colorscheme tokyonight
        ]]
        -- vim.cmd [[
        -- hi Normal guibg=NONE ctermbg=NONE
        -- hi NormalNC guibg=NONE ctermbg=NONE
        -- hi SignColumn guibg=NONE ctermbg=NONE
        -- hi StatusLine guibg=NONE ctermbg=NONE
        -- hi StatusLineNC guibg=NONE ctermbg=NONE
        -- hi VertSplit guibg=NONE ctermbg=NONE
        -- hi TabLine guibg=NONE ctermbg=NONE
        -- hi TabLineFill guibg=NONE ctermbg=NONE
        -- hi TabLineSel guibg=NONE ctermbg=NONE
        -- hi Pmenu guibg=NONE ctermbg=NONE
        -- hi PmenuSel guibg=NONE ctermbg=NONE
        -- hi NeoTreeNormal guibg=NONE ctermbg=NONE
        -- hi NeoTreeNormalNC guibg=NONE ctermbg=NONE
        -- hi NeoTreeWinSeparator guibg=NONE ctermbg=NONE
        -- ]]
    end,
}
