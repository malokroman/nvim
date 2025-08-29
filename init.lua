-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.opt.shell = "powershell.exe"

if vim.g.neovide then
  vim.o.guifont = "FiraCode Nerd Font Mono"
end
