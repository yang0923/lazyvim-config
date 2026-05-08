-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- 使用 jj 退出插入模式
vim.keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode" })

-- 退出终端模式
vim.keymap.set("t", "jj", "<C-\\><C-n>", { desc = "Exit terminal insert mode" })
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal insert mode" })
