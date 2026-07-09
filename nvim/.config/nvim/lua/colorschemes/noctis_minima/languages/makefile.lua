return function(hl, c)
    hl("makeInclude",                   { link = "Keyword" })
    hl("makePreCondit",                 { link = "Keyword" })
    hl("makeIdent",                     { fg = c.text })
    hl("makeStatement",                 { link = "Keyword" })
    hl("makeSpecial",                   { link = "Type" })
    hl("makeCommands",                  { fg = c.text })
    hl("makeTarget",                    { fg = "#C77DBB" })
end
