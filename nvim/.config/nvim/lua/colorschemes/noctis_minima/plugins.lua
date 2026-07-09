return function(hl, c)
    -- nvim-tree
    hl("NvimTreeNormal",                  { fg = c.text, bg = c.project_explorer_win_bg })
    hl("NvimTreeNormalNC",                { fg = c.text, bg = c.project_explorer_win_bg })
    hl("NvimTreeEndOfBuffer",             { fg = c.project_explorer_win_bg, bg = c.project_explorer_win_bg })

    hl("NvimTreeCursorLine",              { bg = c.explorer_highlight })

    hl("NvimTreeRootFolder",              { fg = c.keyword, bold = true })
    hl("NvimTreeFolderName",              { fg = c.keyword })
    hl("NvimTreeFolderIcon",              { fg = c.keyword })
    hl("NvimTreeOpenedFolderName",        { fg = c.accent })

    hl("NvimTreeIndentMarker",            { fg = c.accent })
    hl("NvimTreeSymlink",                 { fg = c.type })

    hl("NvimTreeGitDirty",                { fg = c.git.dirty })
    hl("NvimTreeGitNew",                  { fg = c.string })
    hl("NvimTreeGitDeleted",              { fg = c.error })
    hl("NvimTreeGitStaged",               { fg = c.string })
    hl("NvimTreeGitIgnored",              { fg = c.git.ignored })

    hl("NvimTreeLspDiagnosticsError",     { fg = c.error })
    hl("NvimTreeLspDiagnosticsWarning",   { fg = c.warn })
    hl("NvimTreeLspDiagnosticsInfo",      { fg = c.info })
    hl("NvimTreeLspDiagnosticsHint",      { fg = c.hint })

    hl("NvimTreeWindowPicker",            { fg = c.keyword, bold = true })

    hl("NvimTreeWinSeparator",            { fg = c.visual })
    hl("NvimTreeVertSplit",               { fg = c.visual })

    -- Telescope
    hl("TelescopeNormal",                   { fg = c.text, bg = c.bg })
    hl("TelescopeBorder",                   { fg = c.visual })
    hl("TelescopePromptTitle",              { fg = c.keyword })
    hl("TelescopeResultsTitle",             { fg = c.keyword })
    hl("TelescopePreviewTitle",             { fg = c.keyword })
    hl("Directory",                         { fg = c.keyword })

    -- File status bar
    hl("StatusLine",                        { fg = c.file_status_bar.fg1, bg = c.file_status_bar.bg })
    hl("StatusLineNC",                      { fg = c.file_status_bar.fg2, bg = c.file_status_bar.bg })

    -- Oil
    hl("OilDirHidden",                      { fg = c.git.ignored })
    hl("OilFileHidden",                     { fg = c.git.ignored })
    hl("OilDir",                            { fg = c.keyword, bold = true })
end
