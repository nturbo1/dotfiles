require("nvim-tree").setup({
    view = {
        width = 35,
        side = "left",
        preserve_window_proportions = true,
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = false,
    },
    git = {
        enable = true,
    },
})
