local TEXT_COLOR = "#C8CBD3"
local TYPE_COLOR = TEXT_COLOR

local FUNCTION_NAME_COLOR = "#6CB6FF"

local BACKGROUND_COLOR = "#101114"
local PROJECT_EXPLORER_WINDOW_BG = "#1A1C20"

local KEYWORD = "#D69A74"
local COMMENT_COLOR = "#8A9099"

local NUMBER_COLOR = "#46B8C4"
local STRING_COLOR = "#7BC784"
local CONSTANT_COLOR = "#D38BC8"

local ERROR_COLOR = "#E06C75"
local WARN_COLOR = "#F4C86A"
local INFO_COLOR = "#78DCE8"
local HINT_COLOR = "#69DDB8"

return function()
    return {
        bg         = BACKGROUND_COLOR,
        text       = TEXT_COLOR,
        keyword    = KEYWORD,
        type       = TYPE_COLOR,
        string     = STRING_COLOR,
        number     = NUMBER_COLOR,
        operator   = TEXT_COLOR,
        comment    = COMMENT_COLOR,
        function_  = FUNCTION_NAME_COLOR,
        variable   = TEXT_COLOR,
        constant   = CONSTANT_COLOR,

        cursor     = "#FFFFFF",
        accent     = "#78DCE8",

        error      = ERROR_COLOR,
        warn       = WARN_COLOR,
        info       = INFO_COLOR,
        hint       = HINT_COLOR,

        lineNum    = "#636A75",
        visual     = "#2B4F93",

        explorer_highlight = "#68746B",

        file_status_bar = {
            fg1 = "#D7FFE0",
            fg2 = "#9BDEAA",
            bg  = "#252932"
        },

        git = {
            dirty = "#FFB86C",
        },

        -- Editor UI specific
        project_explorer_win_bg = PROJECT_EXPLORER_WINDOW_BG
    }
end
