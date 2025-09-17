-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Options
vim.opt.autochdir = true

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

-- Theme
vim.api.nvim_command("set nocursorline")

local nonbinary_hl = {
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

require("ibl").setup({
  indent = { highlight = nonbinary_hl },
  scope = { enabled = false },
  -- whitespace = { highlight = pansexual_hl, remove_blankline_trail = false },
})

vim.api.nvim_set_hl(0, "TreesitterContext", { bg = nil, bold = true, underdotted = true })

vim.api.nvim_set_hl(0, "IlluminatedWordRead", { bg = nil, italic = true })
vim.api.nvim_set_hl(0, "IlluminatedWordText", { bg = nil, italic = true })
vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { bg = nil, italic = true })

vim.api.nvim_set_hl(0, "RenderMarkdownH1Bg", { bg = "#cc53cf", fg = "#EEEEEE" })
vim.api.nvim_set_hl(0, "RenderMarkdownH2Bg", { bg = "#53bcdf", fg = "#FFFFFF" })
vim.api.nvim_set_hl(0, "RenderMarkdownH3Bg", { bg = "#cfcc53", fg = "#FFFFFF" })
vim.api.nvim_set_hl(0, "RenderMarkdownH4Bg", { bg = "#cc53cf", fg = "#EEEEEE" })
vim.api.nvim_set_hl(0, "RenderMarkdownH5Bg", { bg = "#53bcdf", fg = "#FFFFFF" })
vim.api.nvim_set_hl(0, "RenderMarkdownH6Bg", { bg = "#cfcc53", fg = "#FFFFFF" })
