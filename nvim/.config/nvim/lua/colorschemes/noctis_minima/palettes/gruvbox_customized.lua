local gruvbox_palette = {
    dark0_hard = "#1d2021",
    dark0 = "#282828",
    dark0_soft = "#32302f",
    dark1 = "#3c3836",
    dark2 = "#504945",
    dark3 = "#665c54",
    dark4 = "#7c6f64",

    gray_245 = "#928374",
    gray_244 = "#928374",

    light0_hard = "#f9f5d7",
    light0 = "#fbf1c7",
    light0_soft = "#f2e5bc",
    light1 = "#ebdbb2",
    light2 = "#d5c4a1",
    light3 = "#bdae93",
    light4 = "#a89984",

    bright_red = "#fb4934",
    bright_green = "#b8bb26",
    bright_yellow = "#fabd2f",
    bright_blue = "#83a598",
    bright_purple = "#d3869b",
    bright_aqua = "#8ec07c",
    bright_orange = "#fe8019",

    neutral_red = "#cc241d",
    neutral_green = "#98971a",
    neutral_yellow = "#d79921",
    neutral_blue = "#458588",
    neutral_purple = "#b16286",
    neutral_aqua = "#689d6a",
    neutral_orange = "#d65d0e",

    faded_red = "#9d0006",
    faded_green = "#79740e",
    faded_yellow = "#b57614",
    faded_blue = "#076678",
    faded_purple = "#8f3f71",
    faded_aqua = "#427b58",
    faded_orange = "#af3a03",
}

local brown = "#964B00"

local TEXT_COLOR = gruvbox_palette.light0_hard
local KEYWORD_COLOR = gruvbox_palette.bright_red
local TYPE_COLOR = gruvbox_palette.light3
local FUNCTION_NAME_COLOR = gruvbox_palette.neutral_blue
local BACKGROUND_COLOR = gruvbox_palette.dark0_hard
local PROJECT_EXPLORER_WINDOW_BG_COLOR = "#202124"
local COMMENT_COLOR = brown
local STRING_COLOR = gruvbox_palette.neutral_aqua
local CONSTANT_COLOR = gruvbox_palette.bright_purple
local NUMBER_COLOR = CONSTANT_COLOR
local IMPORT_COLOR = KEYWORD_COLOR
local MACRO_COLOR = gruvbox_palette.bright_blue
local OPERATOR_COLOR = TEXT_COLOR
local PUNCTUATION_COLOR = TEXT_COLOR

local ERROR_COLOR = "#D64D5B"
local WARN_COLOR = "#F2C55C"
local INFO_COLOR = "#66d9ef"
local HINT_COLOR = "#5fd7af"

return function()
    return {
        bg          = BACKGROUND_COLOR,
        text        = TEXT_COLOR,
        keyword     = KEYWORD_COLOR,
        type        = TYPE_COLOR,
        string      = STRING_COLOR,
        number      = NUMBER_COLOR,
        operator    = OPERATOR_COLOR,
        comment     = COMMENT_COLOR,
        function_   = FUNCTION_NAME_COLOR,
        variable    = TEXT_COLOR,
        constant    = CONSTANT_COLOR,
        import      = IMPORT_COLOR,
        punctuation = PUNCTUATION_COLOR,
        macro       = MACRO_COLOR,

        cursor     = "#ffffff",
        accent     = "#66d9ef",

        error      = ERROR_COLOR,
        warn       = WARN_COLOR,
        info       = INFO_COLOR,
        hint       = HINT_COLOR,

        lineNum    = "#4B5059",
        visual     = "#214283",
        explorer_highlight = "#55615a",

        file_status_bar = {
            fg1 = "#c8facc",
            fg2 = "#8fd19e",
            bg  = "#2a2d34"
        },

        git = {
            dirty = "#ffae57",
            ignored = gruvbox_palette.light3,
        },

        -- Editor UI specific
        project_explorer_win_bg = PROJECT_EXPLORER_WINDOW_BG_COLOR
    }
end
