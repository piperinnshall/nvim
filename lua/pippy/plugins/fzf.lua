return {
  'ibhagwan/fzf-lua',
  event = "VeryLazy",
  opts = {
    { 'borderless-full' },
  },
  config = function(_, opts)
    local fzf = require('fzf-lua')
    fzf.setup(opts)
    fzf.register_ui_select()
  end,
}

