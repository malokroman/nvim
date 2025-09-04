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
      icons = { "○", "◇" },
    },
    code = {
      language_pad = 2,
      left_pad = 2,
      right_pad = 2,
      min_width = 50,
    },
    checkbox = {
      enabled = true,
      unchecked = {
        icon = "󰄱",
      },
      checked = {
        icon = "󰄵",
      },
      custom = {
        todo = { raw = "[-]", rendered = "󰄰", highlight = "RenderMarkdownTodo" },
      },
    },
    link = {
      custom = {
        activity = { pattern = 'Activity/', icon = '󰿖 ' },
        seed = { pattern = 'Seed/', icon = '󰹣 ' },
        tool = { pattern = 'Tool/', icon = '󱁤 ' },
        plant_type = { pattern = 'Plant Type/', icon = ' ' },
        event = { pattern = 'Event/', icon = '󱨳 ' },
        feeling = { pattern = 'Feeling/', icon = ' ' },
        task = { pattern = 'Task/', icon = ' ' },
        recipe = { pattern = 'Recipe/', icon = '󱤖 ' },
        distraction = { pattern = 'Distraction/', icon = ' ' },
        cooking_technique = { pattern = 'Cooking Technique/', icon = '󰭼 ' },
        restaurant = { pattern = 'Restaurant/', icon = ' ' },
      },
    },
  },
}
