return {
  "linux-cultist/venv-selector.nvim",
  cmd = "VenvSelect",
  ft = "python",
  keys = { { "<leader>cv", "<cmd>:VenvSelect<cr>", desc = "Select VirtualEnv", ft = "python" } },
  opts = {
    -- 开启日志（调试用，之后可改为 "info" 或取消）
    log_level = "debug", -- "info", "debug", "trace"

    -- 其他常用选项
    notify_user_on_venv_activation = true,
    override_notify = false,
  },
}
