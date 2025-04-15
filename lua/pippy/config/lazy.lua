-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out, "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
    spec = {
        -- import your plugins
        { import = "pippy.plugins" },
        { import = "pippy.plugins.ft" },
    },
    defaults = {
        -- should plugins be lazy-loaded?
        lazy = true,
    },
    -- Configure any other settings here. See the documentation for more details.
    install = {
        -- colorscheme that will be used when installing plugins.
        colorscheme = { 'oxocarbon', "habamax" }
    },
    checker = {
        -- automatically check for plugin updates
        enabled = true
    },
    ui = {
        -- The border to use for the UI window. Accepts same border values as |nvim_open_win()|.
        border = "none",
    }
})
