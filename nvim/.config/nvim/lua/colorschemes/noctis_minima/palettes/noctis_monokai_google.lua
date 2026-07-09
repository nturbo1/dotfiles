local NIGHT_MODE = "Night"
local DAY_MODE = "Day"
local theme_mode = NIGHT_MODE

local palette = {
    bg0 = "#000000",
    bg1 = "#171717",
    bg2 = "#1e1e1e",
    bg3 = "#292929",

    fg0 = "#ecece6",
    fg1 = "#D8D8CC",

    blue = "#51adbf",
    blue1 = "#388999",
    blue2 = "#2C6B77",

    yellow = "#e2d560",
    yellow1 = "#D7C628",

    green = "#95cb29",
    green1 = "#80AE24",
    green2 = "#64871C",

    red = "#e02266",
    gray = "#696969",

    violet  = "#ae81ff", -- purple
    violet1 = "#955CFF",
    violet2 = "#772EFF",
}

local FLOAT_WINDOW_BG_COLOR; if theme_mode == DAY_MODE then FLOAT_WINDOW_BG_COLOR = palette.bg1 else FLOAT_WINDOW_BG_COLOR = palette.bg0 end 
vim.api.nvim_set_hl(0, "NormalFloat", { bg = FLOAT_WINDOW_BG_COLOR, fg = "NONE" });

local TEXT_COLOR                    = palette.fg1
local BACKGROUND_COLOR; if theme_mode == DAY_MODE then BACKGROUND_COLOR = palette.bg0 else BACKGROUND_COLOR = palette.bg1 end
local KEYWORD_COLOR                 = palette.red
local TYPE_COLOR                    = palette.blue
local BUILTIN_TYPE_COLOR            = palette.red
local FUNCTION_NAME_COLOR           = TEXT_COLOR
local CLASS_CONSTRUCTOR_NAME_COLOR  = FUNCTION_NAME_COLOR
local CLASS_PROPERTY_COLOR          = TEXT_COLOR
local PROJECT_EXPLORER_WINDOW_BG    = palette.bg

local COMMENT_COLOR             = palette.gray
local STRING_COLOR              = palette.green1
local CONSTANT_COLOR            = TEXT_COLOR
local BUILTIN_CONSTANT_COLOR    = KEYWORD_COLOR
local NUMBER_COLOR              = palette.violet
local BOOLEAN_COLOR             = KEYWORD_COLOR

local IMPORT_COLOR  = KEYWORD_COLOR
local MACRO_COLOR   = KEYWORD_COLOR

local OPERATOR_COLOR    = TEXT_COLOR
local PUNCTUATION_COLOR = TEXT_COLOR

local ERROR_COLOR = "#FF0000"
local WARN_COLOR  = "#FFFF00"
local INFO_COLOR  = TEXT_COLOR
local HINT_COLOR  = TEXT_COLOR

return function()
    return {
        bg                  = BACKGROUND_COLOR,
        text                = TEXT_COLOR,
        keyword             = KEYWORD_COLOR,
        type                = TYPE_COLOR,
        builtin_type        = BUILTIN_TYPE_COLOR,
        string              = STRING_COLOR,
        number              = NUMBER_COLOR,
        boolean             = BOOLEAN_COLOR,
        operator            = OPERATOR_COLOR,
        comment             = COMMENT_COLOR,
        function_           = FUNCTION_NAME_COLOR,
        class_constructor   = CLASS_CONSTRUCTOR_NAME_COLOR,
        class_property      = CLASS_PROPERTY_COLOR,
        variable            = TEXT_COLOR,
        constant            = CONSTANT_COLOR,
        builtin_constant    = BUILTIN_CONSTANT_COLOR,
        import              = IMPORT_COLOR,
        punctuation         = PUNCTUATION_COLOR,
        macro               = MACRO_COLOR,

        cursor     = "#ffffff",
        accent     = "#66d9ef",

        error      = ERROR_COLOR,
        warn       = WARN_COLOR,
        info       = INFO_COLOR,
        hint       = HINT_COLOR,

        lineNum             = "#4B5059",
        visual              = "#214283",
        explorer_highlight  = "#55615a",

        file_status_bar = {
            fg1 = "#c8facc",
            fg2 = "#8fd19e",
            bg  = "#2a2d34"
        },

        git = {
            dirty   = "#ffae57",
            ignored = COMMENT_COLOR,
        },

        -- Editor UI specific
        project_explorer_win_bg = PROJECT_EXPLORER_WINDOW_BG
    }
end
