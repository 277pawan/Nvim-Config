-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

-- Copy to system clipboard
map("v", "<C-c>", '"+y', { noremap = true, silent = true }) -- Ctrl+C (Visual Mode)
map("v", "<C-S-c>", '"+y', { noremap = true, silent = true }) -- Ctrl+Shift+C (Visual Mode)
map("n", "<C-c>", '"+yy', { noremap = true, silent = true }) -- Ctrl+C (Normal Mode)
map("n", "<C-S-c>", '"+yy', { noremap = true, silent = true }) -- Ctrl+Shift+C (Normal Mode)

-- Paste from system clipboard
map("n", "<C-v>", '"+p', { noremap = true, silent = true }) -- Ctrl+V (Normal Mode)
map("i", "<C-v>", "<C-r>+", { noremap = true, silent = true }) -- Ctrl+V (Insert Mode)
map("n", "<C-S-v>", '"+p', { noremap = true, silent = true }) -- Ctrl+Shift+V (Normal Mode)
map("i", "<C-S-v>", "<C-r>+", { noremap = true, silent = true }) -- Ctrl+Shift+V (Insert Mode)

-- 🔹 Remap CapsLock to Escape
map("i", "<CapsLock>", "<Esc>", { noremap = true, silent = true })
map("n", "<CapsLock>", "<Esc>", { noremap = true, silent = true })
map("v", "<CapsLock>", "<Esc>", { noremap = true, silent = true })

-- 🔹 Fix Go to Definition (gd)
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { noremap = true, silent = true })
-- Create a custom command for LazyGit
vim.api.nvim_create_user_command("LazyGit", function()
  vim.cmd("terminal lazygit")
end, {})

-- Set up a keymap
vim.keymap.set("n", "<leader>gg", ":LazyGit<CR>", { silent = true })
