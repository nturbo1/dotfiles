-- CSS highlights
return function(hl, c)
    hl("@property",       { fg = c.text })       -- color, background, margin
    hl("@type",           { fg = c.type })       -- px, em, %
    hl("@number",         { fg = c.info })       -- 10, 1.5
    hl("@string",         { fg = c.string })     -- "Roboto"
    hl("@function",       { fg = c.keyword })    -- rgb(), url()
    hl("@keyword",        { fg = c.keyword })    -- @import, @media
    hl("@operator",       { fg = c.accent })     -- :, ;, {}, =
    hl("@comment",        { fg = c.comment, italic = true })
end
