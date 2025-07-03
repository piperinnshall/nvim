return {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
        vim.cmd [[ colorscheme tokyonight ]]
        local highlights = {
            "Normal",
            "NormalNC",
            "SignColumn",
            "StatusLine",
            "StatusLineNC",
            "VertSplit",
            "TabLine",
            "TabLineFill",
            "TabLineSel",
            "Pmenu",
            "PmenuSel",
            "NeoTreeNormal",
            "NeoTreeNormalNC",
            "NeoTreeWinSeparator",
        }
        for _, group in ipairs(highlights) do
            vim.api.nvim_set_hl(0, group, { bg = "none", ctermbg = "none" })
        end
    end,
}
