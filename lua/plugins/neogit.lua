return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim", -- required
    "sindrets/diffview.nvim", -- optional - Diff integration

    -- Only one of these is needed.
    -- "nvim-telescope/telescope.nvim", -- optional
    "ibhagwan/fzf-lua", -- optional
    "nvim-mini/mini.pick", -- optional
    -- "folke/snacks.nvim",             -- optional
  },
  keys = {
    { "<leader>gg", "<cmd>Neogit cwd=%:p:h<cr>", "n", desc = "Neogit (magit yay!)" },
  },
}
