-- HTML/XML specific hightlights
return function(hl, c)
    hl("xmlTag", { fg = c.keyword })
    hl("xmlTagName", { fg = c.keyword })
    hl("xmlAttrib", { fg = c.type })
    hl("xmlString", { fg = c.string })
end
