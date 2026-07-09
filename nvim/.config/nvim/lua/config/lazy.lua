-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end

vim.opt.rtp:prepend(lazypath)

-- plugin manager
require("lazy").setup({

    {
        "nvim-tree/nvim-tree.lua",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
    },

    {
        "stevearc/oil.nvim",
        ---@module 'oil'
        ---@type oil.SetupOpts
        opts = {},
        -- Optional dependencies
        dependencies = {  },
        dependencies = {
            { "nvim-mini/mini.icons", opts = {} },
            "nvim-tree/nvim-web-devicons" -- use if you prefer nvim-web-devicons
        },
        -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
        lazy = false,
    },

    {
        "nvim-telescope/telescope.nvim",
        lazy = false,
        dependencies = {
            "nvim-lua/plenary.nvim",
            -- Optional but strongly recommended: native FZF sorter for much better performance
            {
                "nvim-telescope/telescope-fzf-native.nvim",
                build = "make",
                cond = function()
                    return vim.fn.executable("make") == 1
                end,
            },
        },
        config = function()
            require("config.telescope")
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        branch = "master",
        lazy = false,
        build = ":TSUpdate",
    },

    "nvim-lualine/lualine.nvim",

    -- Color schemes

    -- Markdown Previewer (Render Markdown)
    {
        'MeanderingProgrammer/render-markdown.nvim',
        -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
        -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
        -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
        ft = { "markdown" }
    },

    "sindrets/winshift.nvim", -- window movement
    "numToStr/Comment.nvim", -- code commenting
    {
        'mg979/vim-visual-multi',
        branch = 'master',
        --[[
        Basic usage:

            select words with Ctrl-N (like Ctrl-d in Sublime Text/VS Code)
            create cursors vertically with Ctrl-Down/Ctrl-Up
            select one character at a time with Shift-Arrows
            press n/N to get next/previous occurrence
            press [/] to select next/previous cursor
            press q to skip current and get next occurrence
            press Q to remove current cursor/selection
            start insert mode with i,a,I,A
        ]]
    },

    -- Color schemes
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = true,
    },
    {
        "nickkadutskyi/jb.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
})
