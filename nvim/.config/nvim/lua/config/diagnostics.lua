vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  update_in_insert = true,
  underline = true,
  severity_sort = true,
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = "c",
    callback = function()
        vim.diagnostic.enable(false, { bufnr = 0 })  -- 0 = current buffer
    end,
})
