-- Theme
local nonbinary_hl = {
  "Yellow",
  "White",
  "Purple",
  "Grey",
}

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
