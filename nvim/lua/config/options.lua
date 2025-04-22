-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- Enable this option to avoid conflicts with Prettier.
vim.g.lazyvim_prettier_needs_config =false
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.js", "*.ts", "*.jsx", "*.tsx", "*.json", "*.css", "*.html", "*.md", "*.yaml" },
  callback = function()
    require("conform").format()
  end,
})
vim.g.autoformat = true

