return function(hl, c)
    hl("DiagnosticError", { fg = c.error })
    hl("DiagnosticWarn",  { fg = c.warn })
    hl("DiagnosticInfo",  { fg = c.info })
    hl("DiagnosticHint",  { fg = c.hint })
end
