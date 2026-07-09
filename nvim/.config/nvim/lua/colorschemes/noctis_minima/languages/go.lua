-- Go-specific highlights
return function(hl, c)
    -- Types
    hl("@type.builtin.go",              { fg = c.keyword })
    hl("@type.go",                      { fg = c.type })
    hl("@type.definition.go",           { fg = c.type })

    hl("@operator.go",                  { link = "Operator" })

    hl("@punctuation.delimiter.go",     { link = "Delimiter" })
    hl("@punctuation.bracket.go",       { fg = c.text })

    -- Struct fields
    hl("@field.go",                     { fg = c.text })
    hl("@property.go",                  { fg = c.text })

    -- Interfaces, methods
    hl("@method.go",                    { fg = c.text })
    hl("@interface.go",                 { fg = c.type, italic = true })

    -- Diagnostic links (optional)
    hl("@diagnostic.error",             { fg = c.error })
    hl("@diagnostic.warn",              { fg = c.warn })
    hl("@diagnostic.info",              { fg = c.info })
    hl("@diagnostic.hint",              { fg = c.hint })


    hl("@lsp.type.interface.go",        { fg = c.type, italic = true })
    hl("@lsp.type.parameter.go",        { fg = c.text })
    hl("@lsp.type.property.go",         { fg = c.text })
    hl("@lsp.type.variable.go",         { fg = c.text })
    hl("@lsp.type.keyword.go",          { fg = c.keyword })
end
