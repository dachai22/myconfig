local vim = vim
-- jkhl 移动时光标周围保留8行
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
-- 显示行号
vim.wo.number = true
-- 使用相对行号
vim.wo.relativenumber = true
-- 高亮所在行
vim.wo.cursorline = true
-- 显示左侧图标指示列
vim.wo.signcolumn = "yes"
-- 缩进字符
vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftround = true
-- >> << 时移动长度
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4
-- 空格替代
vim.o.expandtab = true
vim.bo.expandtab = true
-- 搜索大小写不敏感，除非包含大写
vim.o.ignorecase = true
vim.o.smartcase = true
-- 搜索不要高亮
vim.o.hlsearch = false
vim.o.incsearch = true
-- 禁止折行
vim.wo.wrap = false
-- 允许隐藏被修改过的buffer
vim.o.hidden = true
-- 鼠标支持
vim.o.mouse = "a"
-- 禁止创建备份文件
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false
-- smaller updatetime
vim.o.splitbelow = true
vim.o.splitright = true
-- 样式
vim.o.termguicolors = true
vim.opt.termguicolors = true
-- 补全显示10行
vim.o.pumheight = 10
-- 设置剪切板工具
vim.opt.clipboard = "unnamedplus" -- 使用 + 寄存器
vim.g.clipboard = {
  name = "WslClipboard",
  copy = {
    ["+"] = "clip.exe",
    ["*"] = "clip.exe",
  },
  -- paste = {
  --   ["+"] = "powershell.exe -Command Get-Clipboard",
  --   ["*"] = "powershell.exe -Command Get-Clipboard",
  -- },
  cache_enabled = true,
}
