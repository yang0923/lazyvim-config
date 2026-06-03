return {
  "akinsho/bufferline.nvim",
  opts = function(_, opts)
    -- 合并您自己的设置，保留 LazyVim 默认的 offset 逻辑
    opts.options = vim.tbl_deep_extend("force", opts.options or {}, {
      always_show_bufferline = true, -- 总是显示
    })
    return opts
  end,
}
