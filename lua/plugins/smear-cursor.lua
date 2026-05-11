return {
  "sphamba/smear-cursor.nvim",
  event = "VeryLazy",
  cond = vim.g.neovide == nil,
  opts = {
    -- LazyVim 默认必需项
    hide_target_hack = true,
    cursor_color = "none",

    stiffness = 0.5, -- 很软，光标像被拖着走
    trailing_stiffness = 0.25, -- 拖尾很长很松散
    damping = 0.75, -- 衰减很慢
    trailing_alpha = 0.6, -- 非常明显
    max_length = 35, -- 长拖尾
    time_interval = 5, -- 高刷新率
    -- ========== 行为开关 ==========
    smear_between_buffers = true,
    smear_between_neighbor_lines = true,
    smear_insert_mode = true,
  },
  specs = {
    {
      "nvim-mini/mini.animate",
      optional = true,
      opts = {
        cursor = { enable = false },
      },
    },
  },
}
