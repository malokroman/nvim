-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.autochdir = true
vim.opt.cursorline = false
vim.g.snacks_animate = false
vim.g.autoformat = false
vim.g.maplocalleader = ","

-- Shell
if vim.fn.executable("xonsh") == 1 then
  vim.opt.shell = "xonsh"
elseif vim.fn.executable("fish") == 1 then
  vim.opt.shell = "fish"
elseif vim.fn.executable("zsh") == 1 then
  vim.opt.shell = "zsh"
elseif vim.fn.executable("powershell") == 1 then
  vim.opt.shell = "powershell.exe"
end

require('config.highlight')
