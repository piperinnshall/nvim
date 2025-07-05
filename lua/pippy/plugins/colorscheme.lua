local hl = {
    'normal',
    'normalnc',
    'signcolumn',
    'statusline',
    'statuslinenc',
    'vertsplit',
    'tabline',
    'tablinefill',
    'tablinesel',
    'pmenu',
    'pmenusel',
    'neotreenormal',
    'neotreenormalnc',
    'neotreewinseparator',
    'diagnosticvirtualtextok',
    'diagnosticvirtualtexthint',
    'diagnosticvirtualtextinfo',
    'diagnosticvirtualtextwarn',
    'diagnosticvirtualtexterror',
}

return {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
        vim.cmd [[ colorscheme tokyonight ]]
        for _, g in ipairs(hl) do
            local fg = vim.api.nvim_get_hl(0, { name = g, link = false }).fg
            vim.api.nvim_set_hl(0, g, {
                fg = fg,
                bg = "NONE",
            })
        end
    end,
}
