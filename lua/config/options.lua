-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- 配置 python
-- LSP Server to use for Python.
-- Set to "basedpyright" to use basedpyright instead of pyright.
-- 将 pyright 改为 basedpyright 增强类型检测
vim.g.lazyvim_python_lsp = "basedpyright"
-- Set to "ruff_lsp" to use the old LSP implementation version.
vim.g.lazyvim_python_ruff = "ruff"

-- ============================================================================
-- Windows 特定配置
-- ============================================================================
if vim.fn.has("win32") == 1 then
  -- 检查 pwsh.exe 是否存在
  local pwsh_path = vim.fn.executable("pwsh.exe") == 1
  if pwsh_path then
    -- 使用 PowerShell 作为终端
    vim.opt.shell = "pwsh.exe"
    vim.opt.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command"
    vim.opt.shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode"
    vim.opt.shellredir = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode"
  else
    -- 保持默认 cmd，不做任何修改
    -- 可选：打印提示信息
    -- vim.notify("pwsh.exe not found, using default cmd", vim.log.levels.WARN)
  end
end
