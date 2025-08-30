-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

if vim.fn.has("macunix") then
  vim.opt.shell = "xonsh"
elseif vim.fn.has("win64") then
  vim.opt.shell = "powershell.exe"
end

-- Theme
if vim.g.neovide then
  vim.o.guifont = "FiraCode Nerd Font Mono"
end
