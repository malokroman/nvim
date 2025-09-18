-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

if not vim.g.vscode then
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
end
