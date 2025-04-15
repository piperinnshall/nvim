local api   = vim.api
local fn    = vim.fn
local cmd   = api.nvim_create_autocmd
local au    = api.nvim_create_augroup
local map   = vim.keymap.set

-- Netrw
local netrw = au('NetrwGroup', { clear = true })

local last_file = ''

local track_last_file = function()
  local full = fn.expand('%:p')
  last_file = fn.fnamemodify(full, ':t')
end

local function focus_last_file()
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
    callback    = track_last_file,
})

cmd('User', {
    group       = netrw,
    callback    = focus_last_file,
})
