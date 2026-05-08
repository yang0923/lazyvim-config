-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- 使用 jj 退出插入模式
vim.keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode" })

-- 退出终端插入模式
-- 只在非 lazygit 终端中创建 jj 映射（终端打开时动态创建）
vim.api.nvim_create_autocmd("TermOpen", {
  pattern = "*",
  callback = function(args)
    local bufname = vim.api.nvim_buf_get_name(args.buf)
    if not bufname:match("lazygit") then
      vim.keymap.set("t", "jj", "<C-\\><C-n>", { buffer = args.buf, desc = "Exit terminal mode" })
    end
  end,
})
