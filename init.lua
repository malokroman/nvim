-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

if vim.fn.executable("xonsh") == 1 then
  vim.opt.shell = "xonsh"
elseif vim.fn.executable("fish") == 1 then
  vim.opt.shell = "fish"
elseif vim.fn.executable("zsh") == 1 then
  vim.opt.shell = "zsh"
elseif vim.fn.executable("powershell") == 1 then
  vim.opt.shell = "powershell.exe"
end

-- Theme
if vim.g.neovide then
  vim.o.guifont = "FiraCode Nerd Font Mono"
end
