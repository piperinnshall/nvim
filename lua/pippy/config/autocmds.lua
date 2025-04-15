local api   = vim.api
local fn    = vim.fn
local cmd   = api.nvim_create_autocmd
local au    = api.nvim_create_augroup

-- Netrw
local netrw = au('NetrwGroup', { clear = true })

local last_file = ''

local netrw_track = function()
  local full = fn.expand('%:p')
  last_file = fn.fnamemodify(full, ':t')
end

local netrw_focus = function()
  local lines = fn.getline(1, '$')
  if not vim.tbl_islist(lines) then return end
  for i, name in ipairs(lines) do
    if name == last_file then
      vim.cmd(tostring(i))
      return
    end
  end
end

cmd('BufEnter', {
    group       = netrw,
    callback    = netrw_track,
})

cmd('User', {
    group       = netrw,
    pattern = "NetrwEnter",
    callback    = netrw_focus,
})
