return function(hl, c)
    -- ===================================== C ==========================================
    -- Type
    hl("@type.builtin.c",               { fg = c.builtin_type })

    -- Keyword
    hl("@keyword.import.c",             { fg = c.macro })
    hl("@keyword.directive.c",          { fg = c.macro })
    hl("@keyword.directive.define.c",   { fg = c.macro })

    -- Chars
    hl("@character.c",                  { fg = c.string })
    hl("@string.escape.c",              { fg = c.keyword })

    -- Constants
    hl("@constant.builtin.c",           { fg = c.builtin_constant })

    -- Functions
    hl("@function.c",               { link = "Function" })
    hl("@function.call.c",          { link = "Text" })
    hl("@function.method.call.c",   { link = "Text" })

    -- Structures, properties, etc.
    hl("@property.c",         { fg = c.class_property })

    -- ==================================== C++ =========================================
    -- Type
    hl("@type.builtin.cpp",             { fg = c.builtin_type })

    -- Keyword
    hl("@keyword.import.cpp",             { fg = c.macro })
    hl("@keyword.directive.cpp",          { fg = c.macro })
    hl("@keyword.directive.define.cpp",   { fg = c.macro })

    -- Chars
    hl("@character.cpp",                  { fg = c.string })
    hl("@string.escape.cpp",              { fg = c.keyword })

    -- Constants
    hl("@constant.builtin.cpp",           { fg = c.builtin_constant })

    -- Functions
    hl("@function.cpp",             { link = "Function" })
    hl("@function.call.cpp",        { link = "Text" })
    hl("@function.method.call.cpp", { link = "Text" })

    -- Constructors/Destructors
    hl("@constructor.cpp",      { fg = c.class_constructor })

    -- Class, Structures, properties, etc.
    hl("@property.cpp",         { fg = c.class_property })
    hl("@variable.member.cpp",  { fg = c.class_property })
end
