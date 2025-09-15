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
  vim.g.neovide_input_macos_option_key_is_meta = 'only_left'
  vim.g.neovide_opacity = 0.8
end

if not vim.g.vscode then
  local highlight = {
    "Yellow",
    "White",
    "Purple",
    "Grey",
  }

  local hooks = require("ibl.hooks")

  hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "Yellow", { fg = "#cfcc53" })
    vim.api.nvim_set_hl(0, "White", { fg = "#c8c8c8" })
    vim.api.nvim_set_hl(0, "Purple", { fg = "#9374ab" })
    vim.api.nvim_set_hl(0, "Grey", { fg = "#636363" })
  end)

  require("ibl").setup({ indent = { highlight = highlight } })
end
