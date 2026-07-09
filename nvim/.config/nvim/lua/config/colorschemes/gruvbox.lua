local M = {}

-- Minimal, professional Gruvbox setup
function M.setup()
    require("gruvbox").setup({
      undercurl = true,
      underline = true,
      bold = true,
      -- italic = true,
      strikethrough = true,
      invert_selection = false,
      invert_signs = false,
      invert_tabline = false,
      invert_intend_guides = false,
      contrast = "soft",          -- soft contrast, easy on eyes
      palette_overrides = {},      -- we override via highlights below
      overrides = {
        -- Base text
        Normal       = { fg = "#ebdbb2", bg = "#282828" },
        CursorLine   = { bg = "#333333" },
        LineNr       = { fg = "#7c6f64", bg = "#282828" },
        Visual       = { bg = "#3c3836" },

        -- Essentials
        Comment      = { fg = "#928374"--[[ , gui = "italic" ]] },  -- muted gray
        String       = { fg = "#a9b665" },                  -- soft green
        Number       = { fg = "#d79921" },                  -- orange
        Keyword      = { fg = "#fb4934"--[[ , gui = "bold" ]] },    -- soft red
        Type         = { fg = "#83a598"--[[ , gui = "bold" ]] },    -- soft cyan
        Identifier   = { fg = "#ebdbb2" },                  -- normal text
        Function     = { fg = "#ebdbb2" },                  -- neutral

        -- Optional: highlight LSP / diagnostics in minimal way
        Error        = { fg = "#fb4934"--[[ , gui = "bold" ]] },
        Warning      = { fg = "#d79921"--[[ , gui = "bold" ]] },
        Info         = { fg = "#83a598"--[[ , gui = "bold" ]] },
        Hint         = { fg = "#b8bb26"--[[ , gui = "bold" ]] },
      },
    })

    -- Activate the colorscheme
    vim.cmd("colorscheme gruvbox")

    -- Minimal Treesitter override to enforce only essentials
    vim.cmd([[
      hi! link @comment Comment
      hi! link @string String
      hi! link @number Number
      hi! link @keyword Keyword
      hi! link @type Type
      hi! link @function Function
      hi! link @variable Identifier
    ]])
end

return M
