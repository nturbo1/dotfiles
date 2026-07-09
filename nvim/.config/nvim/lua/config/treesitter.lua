require("nvim-treesitter.configs").setup({
    ensure_installed = {
        "c", "lua", "javascript", "typescript", "tsx",
        "html", "css", "python", "cpp", "go", "rust",
        "java", "kotlin", "markdown", "markdown_inline", "vim", "vimdoc",
    },
    highlight = { enable = true },
    indent = { enable = false },
})
