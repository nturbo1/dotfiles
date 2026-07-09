-- Java-specific highlights
return function(hl, c)
    hl("@type.builtin.java",    { link = "Keyword" })
    hl("@character.java",       { fg = c.string })
    hl("@attribute.java",       { fg = "#B3AE60" })
end
