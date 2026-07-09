local palette = {
	bg1 = "#1d2021",
	bg2 = "#2c2c2b",
	bg3 = "#2e3030",

    red_bright = "#fb4934",
	red = "#cc241d",
    red_dark = "#462724",

	orange = "#fe8019",

	gray1 = "#bdae93",
	gray2 = "#928374",
	gray3 = "#7c6f64",
	gray4 = "#504945",

	yellow = "#fabd2f",
	white = "#ebdbb2",

	green = "#b8bb26",
	green_dark = "#3a3d21",

	aqua = "#83a598",
	aqua_dark = "#2f3f33",

	pink = "#d3869b",

    pure_red = "#FF0000",
    pure_yellow = "#FFFF00",
}

vim.api.nvim_set_hl(0, "NormalFloat", { bg = palette.bg2, fg = "NONE" });

local TEXT_COLOR                    = palette.white
local BACKGROUND_COLOR              = palette.bg1
local KEYWORD_COLOR                 = palette.red_bright
local TYPE_COLOR                    = palette.aqua
local BUILTIN_TYPE_COLOR            = KEYWORD_COLOR
local FUNCTION_NAME_COLOR           = palette.pink
local CLASS_CONSTRUCTOR_NAME_COLOR  = FUNCTION_NAME_COLOR
local CLASS_PROPERTY_COLOR          = TEXT_COLOR
local PROJECT_EXPLORER_WINDOW_BG    = palette.bg2

local COMMENT_COLOR  = palette.gray2
local STRING_COLOR   = palette.green
local CONSTANT_COLOR = TEXT_COLOR
local BUILTIN_CONSTANT_COLOR = KEYWORD_COLOR
local NUMBER_COLOR   = palette.orange

local IMPORT_COLOR  = KEYWORD_COLOR
local MACRO_COLOR   = KEYWORD_COLOR

local OPERATOR_COLOR    = TEXT_COLOR
local PUNCTUATION_COLOR = TEXT_COLOR

local ERROR_COLOR = palette.pure_red
local WARN_COLOR  = palette.pure_yellow
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
