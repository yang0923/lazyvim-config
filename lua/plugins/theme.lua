-- 在文件顶部修改这里来切换主题
-- 可选值:  "tokyonight" | "catppuccin" |"gruvbox" | "kanagawa" | "rose-pine"
local active_theme = "tokyonight" -- ← 改这里就行

-- 主题配置映射表
local themes = {

  tokyonight = function()
    return {
      {
        "folke/tokyonight.nvim",
        name = "tokyonight",
        priority = 1000,
        opts = {
          style = "moon", -- night, storm, moon, day
          transparent = false,
        },
      },
      {
        "LazyVim/LazyVim",
        opts = {
          colorscheme = "tokyonight",
        },
      },
    }
  end,

  catppuccin = function()
    return {
      {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        opts = {
          flavour = "mocha", -- mocha, macchiato, frappe, latte
          transparent_background = false,
        },
      },
      {
        "LazyVim/LazyVim",
        opts = {
          colorscheme = "catppuccin",
        },
      },
    }
  end,

  gruvbox = function()
    return {
      {
        "ellisonleao/gruvbox.nvim",
        name = "gruvbox",
        priority = 1000,
        opts = {
          contrast = "hard", -- hard, medium, soft
        },
      },
      {
        "LazyVim/LazyVim",
        opts = {
          colorscheme = "gruvbox",
        },
      },
    }
  end,

  kanagawa = function()
    return {
      {
        "rebelot/kanagawa.nvim",
        name = "kanagawa",
        priority = 1000,
        opts = {
          theme = "wave", -- wave, dragon, lotus
        },
      },
      {
        "LazyVim/LazyVim",
        opts = {
          colorscheme = "kanagawa",
        },
      },
    }
  end,

  ["rose-pine"] = function()
    return {
      {
        "rose-pine/neovim",
        name = "rose-pine",
        priority = 1000,
        opts = {
          variant = "auto", -- auto, main, moon, dawn
        },
      },
      {
        "LazyVim/LazyVim",
        opts = {
          colorscheme = "rose-pine",
        },
      },
    }
  end,
}

-- 返回当前选中的主题配置
if not themes[active_theme] then
  vim.notify("Unknown theme: " .. active_theme .. ", using catppuccin", "warn")
  return themes.catppuccin()
end

return themes[active_theme]()
