vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Require different modules
require("config.options")                       -- Vim opt settings
require("config.keymaps")                       -- Keybindings
require("config.lazy")                          -- Plugin manager setup
require("config.nvim-tree")
require("config.oil")
require("config.treesitter")
require("config.lualine")                       -- Lualine
require("config.colorschemes.color_scheme")     -- Color scheme configs
require("config.diagnostics")                   -- code diagnostics (warning, errors, etc.)
require("config.render-markdown")               -- render markdown 
require("config.winshift")                      -- window movement/replace
require("config.comment")                       -- code commenting
require("config.neovide")                       -- Neovide configs
