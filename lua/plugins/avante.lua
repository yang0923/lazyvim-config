return {
  "yetone/avante.nvim",
  opts = {
    provider = "openai",
    selection = {
      hint_display = "none",
    },
    behaviour = {
      auto_set_keymaps = false,
    },
    providers = {
      openai = {
        -- 选择你想使用的模型
        model = "mimo-v2.5-pro",
        -- MiMo 的 OpenAI 兼容接口地址
        endpoint = "https://api.xiaomimimo.com/v1",
        -- 用于读取 API Key 的环境变量名
        api_key_name = "MIMO_API_KEY",
        extra_request_body = {
          temperature = 0.5,
          max_tokens = 4096,
        },
      },
    },
  },
}
