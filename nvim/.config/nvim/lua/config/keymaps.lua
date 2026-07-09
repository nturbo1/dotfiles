vim.g.mapleader = " "

local function map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)
end

-- ─── Mode changes ─────────────────────────────────────────────────────────────
map("i", "<M-;>", "<Esc>")
map("n", "<M-;>", "<Esc>")
map("v", "<M-;>", "<Esc>")
map("c", "<M-;>", "<Esc>")

-- ─── Text navigation ──────────────────────────────────────────────────────────
map("n", "<S-j>", "<C-f>", { desc = "Move down by a screen height"})
map("n", "<S-k>", "<C-b>", { desc = "Move up by a screen height"})

-- ─── File editing ─────────────────────────────────────────────────────────────
map("n", ";", ":w<CR>", { desc = "Save file" })

-- ─── Terminal ─────────────────────────────────────────────────────────────────
map("t", "<M-;>", "<C-\\><C-n>",                    { desc = "Exit terminal mode" })
map("n", "t",  ":buffer ^term://<CR>",              { desc = "Go to terminal buffer" })
map("n", "<leader>th", ":split | terminal<CR>",     { desc = "Terminal horizontal split" })
map("n", "<leader>tv", ":vsplit | terminal<CR>",    { desc = "Terminal vertical split" })

-- Navigate away from terminal window without exiting it
map("t", "<C-h>", "<cmd>wincmd h<CR>")
map("t", "<C-j>", "<cmd>wincmd j<CR>")
map("t", "<C-k>", "<cmd>wincmd k<CR>")
map("t", "<C-l>", "<cmd>wincmd l<CR>")

-- Resize from terminal mode
map("t", "<C-Up>",    "<cmd>resize -2<CR>")
map("t", "<C-Down>",  "<cmd>resize +2<CR>")
map("t", "<C-Left>",  "<cmd>vertical resize -2<CR>")
map("t", "<C-Right>", "<cmd>vertical resize +2<CR>")

-- ─── Visual block movement & indentation ──────────────────────────────────────
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move block down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move block up" })
map("v", "<", "<gv", { desc = "Indent left" })
map("v", ">", ">gv", { desc = "Indent right" })

-- ─── File explorer ─────────────────────────────────────────────────
-- nvim-tree keys
-- map("n", "<leader>e",  ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
-- map("n", "<leader>q",  ":NvimTreeClose<CR>",  { desc = "Close file explorer" })
-- map("n", "<leader>ef", ":NvimTreeFocus<CR>",  { desc = "Focus file explorer" })
-- map("n", "<leader>er", ":NvimTreeRefresh<CR>", { desc = "Refresh explorer" })
--
-- oil.nvim keys
map("n", "<leader>e", function()
    local oil = require("oil")

    if vim.bo.filetype == "oil" then
        vim.cmd("bd")
    else
        oil.open_float()
    end
end, { desc = "Oil toggle" })

-- ─── Telescope ────────────────────────────────────────────────────────────────
local function tmap(lhs, picker, desc)
    map("n", lhs, function() require("telescope.builtin")[picker]() end, { desc = desc })
end

tmap("<leader>ff", "find_files",               "Find files")
tmap("<leader>fg", "live_grep",                "Live grep")
tmap("<leader>fb", "buffers",                  "Find buffers")
tmap("<leader>fh", "help_tags",                "Find help")
tmap("<leader>fr", "oldfiles",                 "Recent files")
tmap("<leader>fd", "diagnostics",              "Find diagnostics")
-- tmap("<leader>fs", "lsp_document_symbols",     "Document symbols")
tmap("<leader>fc", "commands",                 "Find commands")
tmap("<leader>fk", "keymaps",                  "Find keymaps")
tmap("<leader>fw", "grep_string",              "Find word under cursor")

map("n", "<leader>/", function()
    require("telescope.builtin").current_buffer_fuzzy_find()
end, { desc = "Fuzzy find in buffer" })

-- ─── Buffers ──────────────────────────────────────────────────────────────────
local function open_buffer_safely(bufnr)
    if vim.bo.filetype == "NvimTree" then
        vim.cmd("vsplit")
    end

    vim.api.nvim_set_current_buf(bufnr)
end

local function buf_next()
    local bufs = vim.fn.getbufinfo({ buflisted = 1 })
    bufs = vim.tbl_filter(function(b)
        local bt = vim.bo[b.bufnr].buftype
        local ft = vim.bo[b.bufnr].filetype
        return (bt == "" or bt == "terminal") and ft ~= "NvimTree"
    end, bufs)

    if #bufs == 0 then return end

    local cur = vim.api.nvim_get_current_buf()

    for i, b in ipairs(bufs) do
        if b.bufnr == cur then
            local next = bufs[(i % #bufs) + 1]
            open_buffer_safely(next.bufnr)
            return
        end
    end

    open_buffer_safely(bufs[1].bufnr)
end

local function buf_prev()
    local bufs = vim.fn.getbufinfo({ buflisted = 1 })
    bufs = vim.tbl_filter(function(b)
        local bt = vim.bo[b.bufnr].buftype
        local ft = vim.bo[b.bufnr].filetype
        return (bt == "" or bt == "terminal") and ft ~= "NvimTree"
    end, bufs)

    if #bufs == 0 then return end

    local cur = vim.api.nvim_get_current_buf()

    for i, b in ipairs(bufs) do
        if b.bufnr == cur then
            local prev = bufs[(i - 2) % #bufs + 1]
            open_buffer_safely(prev.bufnr)
            return
        end
    end

    open_buffer_safely(bufs[#bufs].bufnr)
end

map("n", "<leader>n", buf_next, { desc = "Next buffer" })
map("n", "<leader>p", buf_prev, { desc = "Previous buffer" })

map("n", "<leader>bd", function()
    local bufs = vim.fn.getbufinfo({ buflisted = 1 })
    bufs = vim.tbl_filter(function(b)
        local ft = vim.bo[b.bufnr].filetype
        local bt = vim.bo[b.bufnr].buftype
        return (bt == "" or bt == "terminal") and ft ~= "NvimTree"
    end, bufs)
    local cur = vim.api.nvim_get_current_buf()
    if #bufs > 1 then
        -- switch to another buffer first, then delete
        for _, b in ipairs(bufs) do
            if b.bufnr ~= cur then
                vim.api.nvim_set_current_buf(b.bufnr)
                break
            end
        end
    end
    vim.cmd("bd " .. cur)
end, { desc = "Close buffer" })

map("n", "<leader>bl", ":ls<CR>",        { desc = "List buffers" })

-- ─── LSP ──────────────────────────────────────────────────────────────────────
-- These are intentionally set here globally; your lsp.lua should NOT re-declare them.
-- They will only work once an LSP is attached to the buffer, which is fine —
-- the functions themselves guard against no-LSP gracefully.
--
-- THE BELOW LSP KEYMAPS HAVE BEEN COMMENTED OUT DUE TO COMPLET LSP/CODE-COMPLETION/INTELLISENSE
-- STUFF REMOVAL FROM THE CONFIGS. UNCOMMENT THE LINES IF YOU ADD LSP STUFF IN THE CONFIGS.
--
-- map("n", "K",           vim.lsp.buf.hover,        { desc = "LSP hover docs" })
-- map("n", "gd",          vim.lsp.buf.definition,   { desc = "Go to definition" })
-- map("n", "gD",          vim.lsp.buf.declaration,  { desc = "Go to declaration" })
-- map("n", "gi",          vim.lsp.buf.implementation, { desc = "Go to implementation" })
-- map("n", "gr",          vim.lsp.buf.references,   { desc = "Go to references" })
-- map("n", "<leader>rn",  vim.lsp.buf.rename,       { desc = "Rename symbol" })
-- map("n", "<leader>ca",  vim.lsp.buf.code_action,  { desc = "Code action" })
-- map("n", "<leader>D",   vim.diagnostic.open_float, { desc = "Open diagnostic float" })
-- map("n", "[d",          vim.diagnostic.goto_prev,  { desc = "Previous diagnostic" })
-- map("n", "]d",          vim.diagnostic.goto_next,  { desc = "Next diagnostic" })

-- ─── Windows ──────────────────────────────────────────────────────────────────
map("n", "<leader>sh", ":split<CR>",  { desc = "Horizontal split" })
map("n", "<leader>sv", ":vsplit<CR>", { desc = "Vertical split" })

map("n", "<leader>shf", function()
    local file_path = vim.fn.input("File path: ", "", "file")
    if file_path ~= "" then vim.cmd("split " .. file_path) end
end, { desc = "Horizontal split with file" })

map("n", "<leader>svf", function()
    local file_path = vim.fn.input("File path: ", "", "file")
    if file_path ~= "" then vim.cmd("vsplit " .. file_path) end
end, { desc = "Vertical split with file" })

map("n", "<leader>sc", "<C-w>q",  { desc = "Close window" })
map("n", "<leader>se", "<C-w>=",  { desc = "Equalize window sizes" })
map("n", "<leader>sm", ":resize | vertical resize<CR>", { desc = "Maximize window" })

-- Window navigation
map("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Move to lower window" })
map("n", "<C-k>", "<C-w>k", { desc = "Move to upper window" })
map("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- Window resizing (note: these may conflict with terminal emulator shortcuts)
map("n", "<C-Up>",    ":resize +2<CR>",          { desc = "Increase window height" })
map("n", "<C-Down>",  ":resize -2<CR>",           { desc = "Decrease window height" })
map("n", "<C-Left>",  ":vertical resize -2<CR>",  { desc = "Decrease window width" })
map("n", "<C-Right>", ":vertical resize +2<CR>",  { desc = "Increase window width" })

-- WinShift
map("n", "<leader>wm", "<cmd>WinShift<CR>",       { desc = "Start WinShift mode" })
map("n", "<leader>wh", "<cmd>WinShift left<CR>",  { desc = "Shift window left" })
map("n", "<leader>wj", "<cmd>WinShift down<CR>",  { desc = "Shift window down" })
map("n", "<leader>wk", "<cmd>WinShift up<CR>",    { desc = "Shift window up" })
map("n", "<leader>wl", "<cmd>WinShift right<CR>", { desc = "Shift window right" })

-- ─── Editing helpers ──────────────────────────────────────────────────────────
-- Auto-close curly brace with new line
vim.api.nvim_set_keymap("i", "{<CR>", "{<CR>}<Esc>O", { noremap = true })

-- ─── Commenting (Comment.nvim) ────────────────────────────────────────────────
local function comment_line()
    require("Comment.api").toggle.linewise.current()
end

local function comment_lines()
    vim.api.nvim_feedkeys(
        vim.api.nvim_replace_termcodes("<ESC>", true, false, true), "x", false
    )
    require("Comment.api").toggle.linewise(vim.fn.visualmode())
end

map("n", "<C-_>", function()
    comment_line()
end, { desc = "Toggle line comment" })
map("n", "<C-/>", function()
    comment_line()
end, { desc = "Toggle line comment" })
map("v", "<C-_>", function()
    comment_lines()
end, { desc = "Toggle block comment" })
map("v", "<C-/>", function()
    comment_lines()
end, { desc = "Toggle block comment" })
