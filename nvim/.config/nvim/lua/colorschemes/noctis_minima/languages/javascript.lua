-- JavaScript-specific highlights
return function(hl, c)
    -- Keywords
    hl("@keyword.javascript",           { fg = c.keyword, bold = true })     -- function, return, const, let, etc.
    hl("@keyword.operator.javascript",  { fg = c.keyword })                  -- typeof, instanceof
    hl("@keyword.import.javascript",    { fg = c.keyword, italic = true })   -- import, export
    hl("@keyword.function.javascript",  { fg = c.keyword, bold = true })     -- async, yield

    -- Types
    hl("@type.javascript",              { fg = c.type })                     -- user-defined types (classes)
    hl("@type.builtin.javascript",      { fg = c.type, italic = true })      -- Array, Object, String
    hl("@class.javascript",             { fg = c.type, bold = true })        -- class names

    -- Functions & methods
    hl("@function.javascript",          { fg = c.text })                     -- functions
    hl("@function.method.javascript",   { fg = c.text })                     -- class methods
    hl("@function.builtin.javascript",  { fg = c.keyword, italic = true })   -- eval, parseInt, setTimeout

    -- Variables & fields
    hl("@variable.javascript",          { fg = c.text })
    hl("@variable.builtin.javascript",  { fg = c.keyword })                  -- this, arguments
    hl("@property.javascript",          { fg = c.text })                     -- object properties
    hl("@field.javascript",             { fg = c.text })                     -- class fields

    -- Constants
    hl("@constant.javascript",          { fg = c.text })
    hl("@constant.builtin.javascript",  { fg = c.keyword })                  -- undefined, NaN, Infinity

    -- Literals
    hl("@string.javascript",            { fg = c.string })
    hl("@number.javascript",            { fg = c.info })
    hl("@boolean.javascript",           { fg = c.keyword })
    hl("@null.javascript",              { fg = c.keyword, italic = true })

    -- Comments
    hl("@comment.javascript",           { fg = c.comment, italic = true })

    -- Operators & punctuation
    hl("@operator.javascript",          { fg = c.keyword })
    hl("@punctuation.delimiter.javascript", { fg = c.accent })
    hl("@punctuation.bracket.javascript",   { fg = c.accent })

    -- Diagnostics
    hl("@diagnostic.error",             { fg = c.error })
    hl("@diagnostic.warn",              { fg = c.warn })
    hl("@diagnostic.info",              { fg = c.info })
    hl("@diagnostic.hint",              { fg = c.hint })

    -- LSP semantic tokens
    hl("@lsp.type.class.javascript",     { fg = c.type, bold = true })
    hl("@lsp.type.parameter.javascript", { fg = c.text })
    hl("@lsp.type.property.javascript",  { fg = c.text })
    hl("@lsp.type.variable.javascript",  { fg = c.text })
    hl("@lsp.type.keyword.javascript",   { fg = c.keyword })


    -- ================================ JSX ================================
    -- Keywords
    hl("@keyword.javascriptreact",           { fg = c.keyword, bold = true })     -- function, return, const, let, etc.
    hl("@keyword.operator.javascriptreact",  { fg = c.keyword })                  -- typeof, instanceof
    hl("@keyword.import.javascriptreact",    { fg = c.keyword, italic = true })   -- import, export
    hl("@keyword.function.javascriptreact",  { fg = c.keyword, bold = true })     -- async, yield

    -- Types
    hl("@type.javascriptreact",              { fg = c.type })                     -- user-defined types (classes)
    hl("@type.builtin.javascriptreact",      { fg = c.type, italic = true })      -- Array, Object, String
    hl("@class.javascriptreact",             { fg = c.type, bold = true })        -- class names

    -- Functions & methods
    hl("@function.javascriptreact",          { fg = c.text })                     -- functions
    hl("@function.method.javascriptreact",   { fg = c.text })                     -- class methods
    hl("@function.builtin.javascriptreact",  { fg = c.keyword, italic = true })   -- eval, parseInt, setTimeout

    -- Variables & fields
    hl("@variable.javascriptreact",          { fg = c.text })
    hl("@variable.builtin.javascriptreact",  { fg = c.keyword })                  -- this, arguments
    hl("@property.javascriptreact",          { fg = c.text })                     -- object properties
    hl("@field.javascriptreact",             { fg = c.text })                     -- class fields

    -- Constants
    hl("@constant.javascriptreact",          { fg = c.text })
    hl("@constant.builtin.javascriptreact",  { fg = c.keyword })                  -- undefined, NaN, Infinity

    -- Literals
    hl("@string.javascriptreact",            { fg = c.string })
    hl("@number.javascriptreact",            { fg = c.info })
    hl("@boolean.javascriptreact",           { fg = c.keyword })
    hl("@null.javascriptreact",              { fg = c.keyword, italic = true })

    -- Comments
    hl("@comment.javascriptreact",           { fg = c.comment, italic = true })

    -- Operators & punctuation
    hl("@operator.javascriptreact",          { fg = c.keyword })
    hl("@punctuation.delimiter.javascriptreact", { fg = c.accent })
    hl("@punctuation.bracket.javascriptreact",   { fg = c.accent })

    -- LSP semantic tokens
    hl("@lsp.type.class.javascriptreact",     { fg = c.type, bold = true })
    hl("@lsp.type.parameter.javascriptreact", { fg = c.text })
    hl("@lsp.type.property.javascriptreact",  { fg = c.text })
    hl("@lsp.type.variable.javascriptreact",  { fg = c.text })
    hl("@lsp.type.keyword.javascriptreact",   { fg = c.keyword })
end
