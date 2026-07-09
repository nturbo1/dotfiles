require("render-markdown").setup()

-- Manually define commands (if needed)
vim.api.nvim_create_user_command('RenderMarkdown', function()
    require("render-markdown").enable()
end, {})

vim.api.nvim_create_user_command('RenderMarkdownStop', function()
    require("render-markdown").disable()
end, {})
