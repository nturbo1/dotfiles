local NIGHT_MODE = "Night"
local DAY_MODE = "Day"
local theme_mode = DAY_MODE

local palette = {
    dark0_hard     = "#1d2021",
    dark0          = "#282828",
    dark0_soft     = "#32302f",
    dark1          = "#3c3836",
    dark2          = "#504945",
    dark3          = "#665c54",
    dark4          = "#7c6f64",
    dark4_256      = "#7c6f64",

    gray_245       = "#928374",
    gray_244       = "#928374",

    light0_hard    = "#f9f5d7",
    light0         = "#fbf1c7",
    light0_soft    = "#f2e5bc",
    light1         = "#ebdbb2",
    light2         = "#d5c4a1",
    light3         = "#bdae93",
    light4         = "#a89984",
    light4_256     = "#a89984",
    light5         = "#95836A", -- custom

    bright_red     = "#fb4934",
    bright_green   = "#b8bb26",
    bright_yellow  = "#fabd2f",
    bright_blue    = "#83a598",
    bright_purple  = "#d3869b",
    bright_aqua    = "#8ec07c",
    bright_orange  = "#fe8019",

    neutral_red    = "#cc241d",
    neutral_green  = "#98971a",
    neutral_yellow = "#d79921",
    neutral_blue   = "#458588",
    neutral_purple = "#b16286",
    neutral_aqua   = "#689d6a",
    neutral_orange = "#d65d0e",

    faded_red      = "#9d0006",
    faded_green    = "#79740e",
    faded_yellow   = "#b57614",
    faded_blue     = "#076678",
    faded_purple   = "#8f3f71",
    faded_aqua     = "#427b58",
    faded_orange   = "#af3a03",
}

vim.api.nvim_set_hl(0, "NormalFloat", { bg = palette.dark0_soft, fg = "NONE" });

local TEXT_COLOR = palette.light1; if theme_mode == NIGHT_MODE then TEXT_COLOR = palette.light2 end
local BACKGROUND_COLOR              = palette.dark0_hard
local KEYWORD_COLOR                 = palette.bright_red; if theme_mode == NIGHT_MODE then KEYWORD_COLOR = palette.neutral_red end
local TYPE_COLOR                    = TEXT_COLOR
local BUILTIN_TYPE_COLOR            = KEYWORD_COLOR
local FUNCTION_NAME_COLOR           = palette.bright_blue
local CLASS_CONSTRUCTOR_NAME_COLOR  = FUNCTION_NAME_COLOR
local CLASS_PROPERTY_COLOR          = TEXT_COLOR
local PROJECT_EXPLORER_WINDOW_BG    = palette.dark0_soft

local COMMENT_COLOR  = palette.light5
local STRING_COLOR   = palette.bright_green
local CONSTANT_COLOR = TEXT_COLOR
local BUILTIN_CONSTANT_COLOR = KEYWORD_COLOR
local NUMBER_COLOR   = palette.bright_purple

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
            ignored = COMMENT_COLOR,
        },

        -- Editor UI specific
        project_explorer_win_bg = PROJECT_EXPLORER_WINDOW_BG
    }
end
