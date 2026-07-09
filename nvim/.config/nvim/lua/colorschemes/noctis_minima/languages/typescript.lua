-- TypeScript-specific highlights
return function(hl, c)
    -- Keywords
    hl("@keyword.typescript",           { fg = c.keyword, bold = true })     -- type, interface, implements
    hl("@keyword.import.typescript",    { fg = c.keyword, italic = true })   -- import, export
    hl("@keyword.modifier.typescript",  { fg = c.keyword, bold = true })     -- public, private, readonly

    -- Types
    hl("@type.typescript",              { fg = c.type })                     -- user-defined types
    hl("@type.builtin.typescript",      { fg = c.type, italic = true })      -- string, number, boolean, any, void
    hl("@interface.typescript",         { fg = c.type, italic = true })      -- interface names
    hl("@enum.typescript",              { fg = c.type, bold = true })        -- enums

    -- Functions & methods
    hl("@function.typescript",          { fg = c.text })
    hl("@function.method.typescript",   { fg = c.text })
    hl("@function.builtin.typescript",  { fg = c.keyword, italic = true })   -- console.log, parseFloat, etc.

    -- Variables & fields
    hl("@variable.typescript",          { fg = c.text })
    hl("@variable.builtin.typescript",  { fg = c.keyword })                  -- this, super
    hl("@property.typescript",          { fg = c.text })
    hl("@field.typescript",             { fg = c.text })

    -- Constants
    hl("@constant.typescript",          { fg = c.text })
    hl("@constant.builtin.typescript",  { fg = c.keyword })                  -- true, false, null

    -- Literals
    hl("@string.typescript",            { fg = c.string })
    hl("@number.typescript",            { fg = c.info })
    hl("@boolean.typescript",           { fg = c.keyword })
    hl("@null.typescript",              { fg = c.keyword, italic = true })

    -- Comments
    hl("@comment.typescript",           { fg = c.comment, italic = true })

    -- Operators & punctuation
    hl("@operator.typescript",          { fg = c.keyword })
    hl("@punctuation.delimiter.typescript", { fg = c.accent })
    hl("@punctuation.bracket.typescript",   { fg = c.accent })

    -- Annotations / decorators
    hl("@attribute.typescript",         { fg = c.info, italic = true })      -- decorators like @Injectable

    -- Diagnostics
    hl("@diagnostic.error",             { fg = c.error })
    hl("@diagnostic.warn",              { fg = c.warn })
    hl("@diagnostic.info",              { fg = c.info })
    hl("@diagnostic.hint",              { fg = c.hint })

    -- LSP semantic tokens
    hl("@lsp.type.class.typescript",     { fg = c.type, bold = true })
    hl("@lsp.type.interface.typescript", { fg = c.type, italic = true })
    hl("@lsp.type.enum.typescript",      { fg = c.type, bold = true })
    hl("@lsp.type.parameter.typescript", { fg = c.text })
    hl("@lsp.type.property.typescript",  { fg = c.text })
    hl("@lsp.type.variable.typescript",  { fg = c.text })
    hl("@lsp.type.keyword.typescript",   { fg = c.keyword })


-- ======================================= TSX ==========================================
    -- Keywords
    hl("@keyword.typescriptreact",           { fg = c.keyword, bold = true })     -- type, interface, implements
    hl("@keyword.import.typescriptreact",    { fg = c.keyword, italic = true })   -- import, export
    hl("@keyword.modifier.typescriptreact",  { fg = c.keyword, bold = true })     -- public, private, readonly

    -- Types
    hl("@type.typescriptreact",              { fg = c.type })                     -- user-defined types
    hl("@type.builtin.typescriptreact",      { fg = c.type, italic = true })      -- string, number, boolean, any, void
    hl("@interface.typescriptreact",         { fg = c.type, italic = true })      -- interface names
    hl("@enum.typescriptreact",              { fg = c.type, bold = true })        -- enums

    -- Functions & methods
    hl("@function.typescriptreact",          { fg = c.text })
    hl("@function.method.typescriptreact",   { fg = c.text })
    hl("@function.builtin.typescriptreact",  { fg = c.keyword, italic = true })   -- console.log, parseFloat, etc.

    -- Variables & fields
    hl("@variable.typescriptreact",          { fg = c.text })
    hl("@variable.builtin.typescriptreact",  { fg = c.keyword })                  -- this, super
    hl("@property.typescriptreact",          { fg = c.text })
    hl("@field.typescriptreact",             { fg = c.text })

    -- Constants
    hl("@constant.typescriptreact",          { fg = c.text })
    hl("@constant.builtin.typescriptreact",  { fg = c.keyword })                  -- true, false, null

    -- Literals
    hl("@string.typescriptreact",            { fg = c.string })
    hl("@number.typescriptreact",            { fg = c.info })
    hl("@boolean.typescriptreact",           { fg = c.keyword })
    hl("@null.typescriptreact",              { fg = c.keyword, italic = true })

    -- Comments
    hl("@comment.typescriptreact",           { fg = c.comment, italic = true })

    -- Operators & punctuation
    hl("@operator.typescriptreact",          { fg = c.keyword })
    hl("@punctuation.delimiter.typescriptreact", { fg = c.accent })
    hl("@punctuation.bracket.typescriptreact",   { fg = c.accent })

    -- Annotations / decorators
    hl("@attribute.typescriptreact",         { fg = c.info, italic = true })      -- decorators like @Injectable

    -- LSP semantic tokens
    hl("@lsp.type.class.typescriptreact",     { fg = c.type, bold = true })
    hl("@lsp.type.interface.typescriptreact", { fg = c.type, italic = true })
    hl("@lsp.type.enum.typescriptreact",      { fg = c.type, bold = true })
    hl("@lsp.type.parameter.typescriptreact", { fg = c.text })
    hl("@lsp.type.property.typescriptreact",  { fg = c.text })
    hl("@lsp.type.variable.typescriptreact",  { fg = c.text })
    hl("@lsp.type.keyword.typescriptreact",   { fg = c.keyword })
end
