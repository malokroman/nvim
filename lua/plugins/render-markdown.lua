return {
  "MeanderingProgrammer/render-markdown.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-mini/mini.nvim",
  }, -- if you use the mini.nvim suite

  ---@module 'render-markdown'
  ---@type render.md.UserConfig
  opts = {
    bullet = {
      icons = { '○', '◇' },
      right_pad = 1,
    },
    code = {
      language_pad = 2,
      left_pad = 2,
      right_pad = 2,
      min_width = 50,
    },
  },
}
