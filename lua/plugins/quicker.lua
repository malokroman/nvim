return {
  "stevearc/quicker.nvim",
  event = "FileType qf",
  ---@module "quicker"
  ---@type quicker.SetupOptions
  opts = {
    keys = {
      {
        ">",
        function()
          require("quicker").expand()
        end,
        desc = "Expand quickfix content",
      },
    },
  },
}
