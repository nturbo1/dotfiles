local telescope = require("telescope")
local actions = require("telescope.actions")
local builtin = require("telescope.builtin")

telescope.setup({
    defaults = {
        -- Show results from top to bottom
        sorting_strategy = "ascending",
        layout_config = {
            prompt_position = "top",
            horizontal = {
                preview_width = 0.55,
            },
        },
        -- Fuzzy find across the full path, not just filename
        path_display = { "truncate" },
        mappings = {
            i = { -- insert mode keymaps inside telescope
                ["<C-k>"] = actions.move_selection_previous,
                ["<C-j>"] = actions.move_selection_next,
                ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
                ["<Esc>"] = actions.close,
                ["<C-u>"] = false, -- clear the prompt (default is scroll preview up)
            },
            n = { -- normal mode keymaps inside telescope
                ["q"] = actions.close,
                ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
            },
        },
        -- Files/dirs to never show
        file_ignore_patterns = {
            "node_modules",
            ".git/",
            "%.o",
            "%.a",
            "%.out",
            "%.class",
            "%.pdf",
            "%.mkv",
            "%.mp4",
            "%.zip",
        },
    },
    pickers = {
        find_files = {
            hidden = true, -- show hidden files (dotfiles)
        },
        live_grep = {
            additional_args = function()
                return { "--hidden" } -- search inside hidden files too
            end,
        },
        buffers = {
            sort_lastused = true, -- most recently used buffers first
            mappings = {
                i = {
                    ["<C-d>"] = actions.delete_buffer,
                },
                n = {
                    ["<C-d>"] = actions.delete_buffer,
                },
            },
        },
    },
})

-- Load the fzf extension if it was built successfully
pcall(telescope.load_extension, "fzf")
