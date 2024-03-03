-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Shows always markdown source code
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "markdown" },
  callback = function()
    vim.wo.conceallevel = 0
  end,
})

-- PencilSoft for markdown, text, and txt files
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "markdown", "text", "*.txt", "*.tex" },
  callback = function()
    vim.cmd("PencilSoft")
  end,
})
