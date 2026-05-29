return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        basedpyright = {
          settings = {
            basedpyright = {
              analysis = {
                -- 类型检查模式可选值：
                -- "off"      : 关闭类型检查，仅做语法解析和模块导入检查（不提示类型错误）。
                -- "basic"    : 基础类型检查，覆盖常见类型错误，适合快速开发。
                -- "standard" : 标准检查模式，平衡了检查严格度和实用性（较新版 Pyright 的推荐默认值）。
                -- "strict"   : 严格模式，启用绝大多数检查规则，适合高质量代码项目。
                -- "all"      : (BasedPyright 特有) 启用所有可能的检查规则，最严格。
                -- "recommended" : (BasedPyright 特有) 推荐模式，启用所有诊断规则但分级报告，减少告警疲劳。
                typeCheckingMode = "off",

                autoImportCompletions = true, -- 启用自动导入补全
              },
            },
          },
        },
      },
    },
  },
}
