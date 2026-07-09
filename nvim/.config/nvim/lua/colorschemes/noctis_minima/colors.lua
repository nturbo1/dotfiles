local palette = "noctis_monokai_google"
local palette_module = "colorschemes.noctis_minima.palettes." .. palette

local ok, mod = pcall(require, palette_module)
if not ok then
    error("Palette not found: " .. palette)
end

return mod()
