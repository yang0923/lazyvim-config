return {
  "yelog/i18n.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "ibhagwan/fzf-lua", -- 可选
  },
  config = function()
    -- 全局配置中无需再写 locales 和 sources，它们会被项目配置覆盖
    require("i18n").setup({
      -- 这里可以为空，或者只放一些键位映射
    })

    -- 键位映射保持不变
    local map = vim.keymap.set
    map("n", "<leader>in", "<cmd>I18nNextLocale<CR>", { desc = "I18n: Next Locale" })
    map("n", "<leader>io", "<cmd>I18nToggleOrigin<CR>", { desc = "I18n: Toggle Origin/Key" })
    map("n", "<leader>if", function()
      require("i18n").show_i18n_keys_with_fzf()
    end, { desc = "I18n: Search Keys" })

    -- 新增
    map("n", "<leader>ia", "<cmd>I18nAddKey<CR>", { desc = "I18n: Add Missing Key" })
    map("n", "<leader>ir", "<cmd>I18nReload<CR>", { desc = "I18n: Reload Translations" })
    map("n", "<leader>is", "<cmd>I18nStatus<CR>", { desc = "I18n: Show Status" })
    map("n", "<leader>ie", "<cmd>I18nEnable<CR>", { desc = "I18n: Enable (toggle)" })
  end,
}
