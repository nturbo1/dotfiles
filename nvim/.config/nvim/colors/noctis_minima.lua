vim.cmd("highlight clear")
vim.o.background = "dark"
vim.g.colors_name = "noctis_minima"
vim.opt.termguicolors = true

local hl = require("colorschemes.noctis_minima.highlight").highlight
local colors = require("colorschemes.noctis_minima.colors")

require("colorschemes.noctis_minima.core")(hl, colors)
require("colorschemes.noctis_minima.syntax")(hl, colors)
require("colorschemes.noctis_minima.treesitter")(hl, colors)
require("colorschemes.noctis_minima.lsp")(hl, colors)
require("colorschemes.noctis_minima.plugins")(hl, colors)

-- Load language-specific highlights
require("colorschemes.noctis_minima.languages.c_cpp")(hl, colors)
require("colorschemes.noctis_minima.languages.go")(hl, colors)
require("colorschemes.noctis_minima.languages.makefile")(hl, colors)
require("colorschemes.noctis_minima.languages.cmake")(hl, colors)
require("colorschemes.noctis_minima.languages.java")(hl, colors)
require("colorschemes.noctis_minima.languages.yaml")(hl, colors)
-- require("colorschemes.noctis_minima.languages.javascript")(hl, colors)
-- require("colorschemes.noctis_minima.languages.typescript")(hl, colors)
require("colorschemes.noctis_minima.languages.html_xml")(hl, colors)
-- require("colorschemes.noctis_minima.languages.css")(hl, colors)
