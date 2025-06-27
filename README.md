# 💾 nvim

My [Neovim](https://neovim.io/) Dot Files
--- Startup times for process: Primary (or UI client) ---

times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.000  000.000: --- NVIM STARTING ---
000.094  000.094: event init
000.198  000.103: early init
000.605  000.407: locale set
000.641  000.036: init first window
010.465  009.824: inits 1
010.476  000.011: window checked
010.478  000.003: parsing arguments
010.939  000.041  000.041: require('vim.shared')
011.021  000.032  000.032: require('vim.inspect')
011.062  000.032  000.032: require('vim._options')
011.065  000.123  000.059: require('vim._editor')
011.066  000.199  000.035: require('vim._init_packages')
011.068  000.391: init lua interpreter
013.791  002.723: nvim_ui_attach
014.123  000.333: nvim_set_client_info
014.127  000.003: --- NVIM STARTED ---

--- Startup times for process: Embedded ---

times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.000  000.000: --- NVIM STARTING ---
000.070  000.070: event init
000.153  000.083: early init
000.477  000.324: locale set
000.504  000.027: init first window
000.817  000.313: inits 1
000.830  000.013: window checked
000.832  000.002: parsing arguments
001.231  000.035  000.035: require('vim.shared')
001.304  000.029  000.029: require('vim.inspect')
001.340  000.028  000.028: require('vim._options')
001.342  000.108  000.051: require('vim._editor')
001.344  000.194  000.050: require('vim._init_packages')
001.346  000.320: init lua interpreter
003.233  001.887: expanding arguments
003.241  000.009: inits 2
003.483  000.242: init highlight
003.484  000.001: waiting for UI
003.614  000.130: done waiting for UI
003.619  000.006: clear screen
003.720  000.012  000.012: require('vim.keymap')
004.430  000.118  000.118: sourcing nvim_exec2()
004.550  000.929  000.799: require('vim._defaults')
004.552  000.004: init default mappings & autocommands
004.593  000.041: --cmd commands
005.497  000.059  000.059: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/ftplugin.vim
005.587  000.023  000.023: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/indent.vim
006.788  000.246  000.246: require('builtin.modules.status')
007.934  000.768  000.768: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/colors/vim.lua
008.566  001.580  000.812: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/colors/retrobox.vim
008.577  001.737  000.157: sourcing nvim_exec2() called at /private/etc/nix-darwin/home-manager/configs/nvim/init-b.lua:0
008.579  002.427  000.444: require('builtin.config.options')
009.410  000.277  000.277: require('builtin.modules.explorer')
009.653  000.242  000.242: require('builtin.modules.terminal')
009.660  001.079  000.560: require('builtin.config.keymaps')
009.917  000.256  000.256: require('builtin.config.autocmds')
009.960  000.039  000.039: sourcing nvim_exec2() called at /private/etc/nix-darwin/home-manager/configs/nvim/init-b.lua:0
009.967  000.003  000.003: sourcing nvim_exec2() called at /private/etc/nix-darwin/home-manager/configs/nvim/init-b.lua:0
010.112  000.143  000.143: sourcing nvim_exec2() called at /private/etc/nix-darwin/home-manager/configs/nvim/init-b.lua:0
010.163  000.025  000.025: sourcing nvim_exec2() called at /private/etc/nix-darwin/home-manager/configs/nvim/init-b.lua:0
010.168  000.003  000.003: sourcing nvim_exec2() called at /private/etc/nix-darwin/home-manager/configs/nvim/init-b.lua:0
011.220  001.050  001.050: sourcing nvim_exec2() called at /private/etc/nix-darwin/home-manager/configs/nvim/init-b.lua:0
011.253  005.589  000.564: require('builtin.core')
012.592  000.030  000.030: require('vim.fs')
012.622  000.282  000.252: require('vim.lsp.log')
013.394  000.770  000.770: require('vim.lsp.protocol')
014.713  001.317  001.317: require('vim.lsp.util')
015.226  000.244  000.244: require('vim.lsp.sync')
015.230  000.514  000.271: require('vim.lsp._changetracking')
015.803  000.198  000.198: require('vim.lsp._transport')
015.813  000.582  000.384: require('vim.lsp.rpc')
015.841  004.289  000.824: require('vim.lsp')
016.979  000.004  000.004: require('vim.F')
017.006  001.162  001.158: require('vim.diagnostic')
017.038  005.783  000.332: require('builtin.core.lsp')
017.040  011.400  000.028: sourcing init-b.lua
017.043  000.969: sourcing vimrc file(s)
017.237  000.034  000.034: sourcing nvim_exec2() called at /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/filetype.lua:0
017.239  000.106  000.072: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/filetype.lua
017.447  000.064  000.064: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/syntax/synload.vim
017.537  000.234  000.170: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/syntax/syntax.vim
018.787  000.119  000.119: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/plugin/gzip.vim
019.785  000.123  000.123: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim
019.859  001.028  000.905: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/plugin/matchit.vim
019.988  000.090  000.090: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/plugin/matchparen.vim
020.944  000.147  000.147: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/pack/dist/opt/netrw/plugin/netrwPlugin.vim
021.016  000.986  000.840: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/plugin/netrwPlugin.vim
021.162  000.006  000.006: sourcing /nix/store/iabl7yr5k9hd5m97y8w61qiwwybna5av-neovim-0.11.0/rplugin.vim
021.289  000.225  000.219: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/plugin/rplugin.vim
021.373  000.036  000.036: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/plugin/shada.vim
021.430  000.010  000.010: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/plugin/spellfile.vim
021.528  000.051  000.051: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/plugin/tarPlugin.vim
021.587  000.010  000.010: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/plugin/tutor.vim
021.710  000.076  000.076: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/plugin/zipPlugin.vim
021.805  000.046  000.046: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/plugin/editorconfig.lua
021.910  000.054  000.054: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/plugin/man.lua
022.014  000.056  000.056: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/plugin/osc52.lua
022.091  000.030  000.030: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/plugin/tohtml.lua
022.116  001.916: loading rtp plugins
022.378  000.263: loading packages
023.003  000.625: loading after plugins
023.020  000.016: inits 3
024.492  001.472: reading ShaDa
024.613  000.121: opening buffers
024.645  000.032: BufEnter autocommands
024.646  000.001: editing files in windows
029.561  004.740  004.740: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/pack/dist/opt/netrw/autoload/netrw.vim
029.872  000.112  000.112: sourcing /Users/piperinnshall/.local/share/nvim/.netrwhist
031.767  001.034  001.034: require('vim.filetype')
033.107  000.941  000.941: require('vim.filetype.detect')
035.994  000.403  000.403: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/pack/dist/opt/netrw/syntax/netrw.vim
038.046  000.156  000.156: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/pack/dist/opt/netrw/syntax/netrw.vim
044.023  000.171  000.171: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/pack/dist/opt/netrw/syntax/netrw.vim
044.211  012.009: VimEnter autocommands
044.404  000.178  000.178: require('vim.termcap')
044.466  000.012  000.012: require('vim.text')
044.478  000.078: UIEnter autocommands
044.479  000.001: before starting main loop
044.907  000.280  000.280: require('builtin.modules.tabs')
045.307  000.549: first screen update
045.309  000.002: --- NVIM STARTED ---

--- Startup times for process: Primary (or UI client) ---

times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.000  000.000: --- NVIM STARTING ---
000.076  000.076: event init
000.144  000.068: early init
000.418  000.274: locale set
000.442  000.023: init first window
007.735  007.293: inits 1
007.742  000.007: window checked
007.744  000.002: parsing arguments
008.088  000.030  000.030: require('vim.shared')
008.148  000.024  000.024: require('vim.inspect')
008.178  000.023  000.023: require('vim._options')
008.180  000.090  000.043: require('vim._editor')
008.181  000.148  000.027: require('vim._init_packages')
008.183  000.291: init lua interpreter
010.289  002.107: nvim_ui_attach
010.519  000.229: nvim_set_client_info
010.520  000.001: --- NVIM STARTED ---

--- Startup times for process: Embedded ---

times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.000  000.000: --- NVIM STARTING ---
000.066  000.066: event init
000.143  000.077: early init
000.498  000.355: locale set
000.531  000.033: init first window
000.822  000.291: inits 1
000.834  000.012: window checked
000.836  000.002: parsing arguments
001.185  000.032  000.032: require('vim.shared')
001.251  000.025  000.025: require('vim.inspect')
001.282  000.024  000.024: require('vim._options')
001.284  000.095  000.045: require('vim._editor')
001.285  000.168  000.042: require('vim._init_packages')
001.286  000.282: init lua interpreter
002.743  001.457: expanding arguments
002.754  000.011: inits 2
002.999  000.246: init highlight
003.000  000.001: waiting for UI
003.135  000.134: done waiting for UI
003.140  000.006: clear screen
003.244  000.012  000.012: require('vim.keymap')
003.986  000.133  000.133: sourcing nvim_exec2()
004.122  000.978  000.833: require('vim._defaults')
004.123  000.004: init default mappings & autocommands
004.167  000.044: --cmd commands
005.174  000.061  000.061: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/ftplugin.vim
005.270  000.024  000.024: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/indent.vim
006.107  000.142  000.142: require('builtin.modules.status')
007.188  000.807  000.807: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/colors/vim.lua
007.609  001.288  000.481: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/colors/retrobox.vim
007.618  001.458  000.170: sourcing nvim_exec2() called at /private/etc/nix-darwin/home-manager/configs/nvim/init-b.lua:0
007.621  001.938  000.338: require('builtin.config.options')
008.131  000.130  000.130: require('builtin.modules.explorer')
008.242  000.110  000.110: require('builtin.modules.terminal')
008.248  000.626  000.386: require('builtin.config.keymaps')
008.376  000.127  000.127: require('builtin.config.autocmds')
008.414  000.034  000.034: sourcing nvim_exec2() called at /private/etc/nix-darwin/home-manager/configs/nvim/init-b.lua:0
008.420  000.003  000.003: sourcing nvim_exec2() called at /private/etc/nix-darwin/home-manager/configs/nvim/init-b.lua:0
008.565  000.143  000.143: sourcing nvim_exec2() called at /private/etc/nix-darwin/home-manager/configs/nvim/init-b.lua:0
008.613  000.024  000.024: sourcing nvim_exec2() called at /private/etc/nix-darwin/home-manager/configs/nvim/init-b.lua:0
008.618  000.002  000.002: sourcing nvim_exec2() called at /private/etc/nix-darwin/home-manager/configs/nvim/init-b.lua:0
009.504  000.885  000.885: sourcing nvim_exec2() called at /private/etc/nix-darwin/home-manager/configs/nvim/init-b.lua:0
009.554  004.175  000.393: require('builtin.core')
010.764  000.037  000.037: require('vim.fs')
010.804  000.300  000.263: require('vim.lsp.log')
011.626  000.820  000.820: require('vim.lsp.protocol')
013.036  001.407  001.407: require('vim.lsp.util')
013.587  000.265  000.265: require('vim.lsp.sync')
013.591  000.553  000.288: require('vim.lsp._changetracking')
014.190  000.206  000.206: require('vim.lsp._transport')
014.200  000.607  000.401: require('vim.lsp.rpc')
014.225  004.515  000.828: require('vim.lsp')
015.398  000.004  000.004: require('vim.F')
015.426  001.200  001.196: require('vim.diagnostic')
015.436  005.880  000.165: require('builtin.core.lsp')
015.437  010.093  000.038: sourcing init-b.lua
015.442  001.097: sourcing vimrc file(s)
015.625  000.035  000.035: sourcing nvim_exec2() called at /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/filetype.lua:0
015.627  000.099  000.065: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/filetype.lua
015.820  000.061  000.061: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/syntax/synload.vim
015.910  000.221  000.161: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/syntax/syntax.vim
017.136  000.122  000.122: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/plugin/gzip.vim
018.147  000.122  000.122: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim
018.227  001.048  000.926: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/plugin/matchit.vim
018.373  000.102  000.102: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/plugin/matchparen.vim
019.373  000.155  000.155: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/pack/dist/opt/netrw/plugin/netrwPlugin.vim
019.451  001.035  000.880: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/plugin/netrwPlugin.vim
019.603  000.006  000.006: sourcing /nix/store/iabl7yr5k9hd5m97y8w61qiwwybna5av-neovim-0.11.0/rplugin.vim
019.740  000.239  000.233: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/plugin/rplugin.vim
019.825  000.036  000.036: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/plugin/shada.vim
019.891  000.011  000.011: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/plugin/spellfile.vim
020.000  000.058  000.058: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/plugin/tarPlugin.vim
020.061  000.011  000.011: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/plugin/tutor.vim
020.191  000.080  000.080: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/plugin/zipPlugin.vim
020.285  000.042  000.042: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/plugin/editorconfig.lua
020.389  000.051  000.051: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/plugin/man.lua
020.495  000.054  000.054: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/plugin/osc52.lua
020.580  000.032  000.032: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/plugin/tohtml.lua
020.606  001.924: loading rtp plugins
020.887  000.281: loading packages
021.560  000.673: loading after plugins
021.576  000.016: inits 3
023.111  001.535: reading ShaDa
023.225  000.114: opening buffers
023.252  000.027: BufEnter autocommands
023.253  000.001: editing files in windows
027.817  004.409  004.409: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/pack/dist/opt/netrw/autoload/netrw.vim
028.079  000.020  000.020: sourcing /Users/piperinnshall/.local/share/nvim/.netrwhist
030.205  001.195  001.195: require('vim.filetype')
031.518  000.941  000.941: require('vim.filetype.detect')
034.285  000.194  000.194: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/pack/dist/opt/netrw/syntax/netrw.vim
036.224  000.154  000.154: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/pack/dist/opt/netrw/syntax/netrw.vim
041.578  000.146  000.146: sourcing /nix/store/78qn5fpa58m6mwi0xk3wjz20mq9q76bs-neovim-unwrapped-0.11.0/share/nvim/runtime/pack/dist/opt/netrw/syntax/netrw.vim
041.753  011.441: VimEnter autocommands
041.930  000.163  000.163: require('vim.termcap')
041.987  000.010  000.010: require('vim.text')
042.002  000.076: UIEnter autocommands
042.002  000.001: before starting main loop
042.249  000.112  000.112: require('builtin.modules.tabs')
042.628  000.513: first screen update
042.628  000.001: --- NVIM STARTED ---

