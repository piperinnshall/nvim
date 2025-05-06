local api = vim.api
local hl = api.nvim_set_hl

hl(0, 'MatchParen', {
  fg = 'NONE',
  bg = 'NvimLightCyan',
  underline = true,
})

hl(0, 'Cursor', {
  fg    = 'NONE',
  bg    = 'NvimDarkGrey3',
})

hl(0, 'RenderMarkdownCode', {
    fg = 'NONE',
    bg = 'NvimLightGrey3'
})
