local jetbrains_palette = {
    background          = "#1E1F22", -- "#141518"
    background_alt      = "#202124",
    foreground          = "#BCBEC4",

    gray_100            = "#FFFFFF",
    gray_90             = "#BCBEC4",
    gray_80             = "#A9B0BA",
    gray_70             = "#9DA1A6",
    gray_60             = "#7A7E85",
    gray_50             = "#5A5D63",
    gray_40             = "#4B5059",

    orange              = "#CF8E6D",
    orange_dark         = "#C67A5A",

    blue                = "#56A8F5",
    blue_bright         = "#6C9EFF",

    green               = "#6AAB73",
    green_bright        = "#A8C023",

    cyan                = "#2AACB8",
    cyan_bright         = "#66D9EF",

    purple_dark         = "#9373A5",

    pink_dark           = "#A65AA0",
    pink                = "#C77DBB",
    pink_bright         = "#D58BCE",

    yellow              = "#BBB529",
    yellow_bright       = "#F2C55C",

    red                 = "#D64D5B",
    red_bright          = "#FF6B7A",

    git_orange          = "#FFAE57",
    git_green           = "#629755",
    git_red             = "#D25252",

    selection           = "#214283",
    search              = "#32593D",

    cursor              = "#FFFFFF",
    line_number         = "#4B5059",
    statusline          = "#2A2D34",
}

vim.api.nvim_set_hl(0, "NormalFloat", { bg = jetbrains_palette.background_alt, fg = "NONE" });

local TEXT_COLOR                    = jetbrains_palette.foreground
local KEYWORD_COLOR                 = jetbrains_palette.orange
local TYPE_COLOR                    = TEXT_COLOR
local BUILTIN_TYPE_COLOR            = KEYWORD_COLOR
local FUNCTION_NAME_COLOR           = jetbrains_palette.blue
local CLASS_CONSTRUCTOR_NAME_COLOR  = jetbrains_palette.blue
local CLASS_PROPERTY_COLOR          = jetbrains_palette.purple_dark
local BACKGROUND_COLOR              = jetbrains_palette.background
local PROJECT_EXPLORER_WINDOW_BG    = jetbrains_palette.background_alt

local COMMENT_COLOR  = jetbrains_palette.gray_50
local STRING_COLOR   = jetbrains_palette.green
local CONSTANT_COLOR = jetbrains_palette.pink
local BUILTIN_CONSTANT_COLOR = KEYWORD_COLOR
local NUMBER_COLOR   = jetbrains_palette.cyan
local BOOLEAN_COLOR             = KEYWORD_COLOR

local IMPORT_COLOR  = jetbrains_palette.orange
local MACRO_COLOR   = jetbrains_palette.yellow

local OPERATOR_COLOR    = jetbrains_palette.foreground
local PUNCTUATION_COLOR = jetbrains_palette.foreground

local ERROR_COLOR = jetbrains_palette.red
local WARN_COLOR  = jetbrains_palette.yellow_bright
local INFO_COLOR  = jetbrains_palette.cyan_bright
local HINT_COLOR  = "#5fd7af"

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
        operator            = TEXT_COLOR,
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
            ignored = jetbrains_palette.gray_60,
        },

        -- Editor UI specific
        project_explorer_win_bg = PROJECT_EXPLORER_WINDOW_BG
    }
end
