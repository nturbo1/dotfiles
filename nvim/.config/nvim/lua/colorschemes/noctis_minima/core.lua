return function(hl, colors)
    hl("Normal",       { fg = colors.text, bg = colors.bg })
    hl("CursorLine",   { bg = colors.cursor })
    hl("Visual",       { bg = colors.visual })
    hl("LineNr",       { fg = colors.accent })
    hl("CursorLineNr", { fg = colors.text, bold = true })
end
