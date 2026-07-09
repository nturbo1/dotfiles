local noctis_gruber_palette = {
  bg            = "#1F1F1F",
  fg_bright     = "#D6D6D6",
  fg            = "#BCBEC4",

  brown_bright  = "#AD7F7F",
  brown         = "#915C5C",
  yellow_bright = "#FFE700",
  yellow        = "#D1BD2A", -- "#C2B02B",
  green         = "#41A657",
  gray          = "#7A7E85",
  red           = "#F03535",
  niagara       = "#96a6c8",
}

vim.api.nvim_set_hl(0, "NormalFloat", { bg = noctis_gruber_palette.bg, fg = "NONE" });

local TEXT_COLOR                    = noctis_gruber_palette.fg
local BACKGROUND_COLOR              = noctis_gruber_palette.bg
local KEYWORD_COLOR                 = noctis_gruber_palette.yellow
local TYPE_COLOR                    = noctis_gruber_palette.gray
local BUILTIN_TYPE_COLOR            = KEYWORD_COLOR
local FUNCTION_NAME_COLOR           = TEXT_COLOR
local CLASS_CONSTRUCTOR_NAME_COLOR  = TEXT_COLOR
local CLASS_PROPERTY_COLOR          = TEXT_COLOR
local PROJECT_EXPLORER_WINDOW_BG    = TEXT_COLOR

local COMMENT_COLOR  = noctis_gruber_palette.brown_bright
local STRING_COLOR   = noctis_gruber_palette.green
local CONSTANT_COLOR = noctis_gruber_palette.niagara
local BUILTIN_CONSTANT_COLOR = noctis_gruber_palette.gray
local NUMBER_COLOR   = noctis_gruber_palette.niagara

local IMPORT_COLOR  = TEXT_COLOR
local MACRO_COLOR   = noctis_gruber_palette.gray

local OPERATOR_COLOR    = TEXT_COLOR
local PUNCTUATION_COLOR = TEXT_COLOR

local ERROR_COLOR = TEXT_COLOR
local WARN_COLOR  = TEXT_COLOR
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
            ignored = noctis_gruber_palette.comment,
        },

        -- Editor UI specific
        project_explorer_win_bg = PROJECT_EXPLORER_WINDOW_BG
    }
end
