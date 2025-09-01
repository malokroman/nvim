return {
  "obsidian-nvim/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = false,
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
  --   -- refer to `:h file-pattern` for more examples
  --   "BufReadPre path/to/my-vault/*.md",
  --   "BufNewFile path/to/my-vault/*.md",
  -- },
  ---@module 'obsidian'
  ---@type obsidian.config
  opts = {
    workspaces = {
      {
        name = "personal",
        path = "~/vaults/personal",
      },
      {
        name = "work",
        path = "~/vaults/work",
      },
    },
    -- see below for full list of options 👇
  },
  keys = {
    { "<leader>o<tab>", "<cmd>ObsidianWorkspace<cr>", desc = "Obsidian - Switch workspace" },

    -- Obsidian Create Notes
    { "<leader>on", "<cmd>ObsidianNewFromTemplate<cr>", desc = "Obsidian - New note from template" },
    { "<leader>oN", "<cmd>ObsidianNew<cr>", desc = "Obsidian - New note" },
    { "<cr>", "<cmd>ObsidianFollowLink vsplit<cr>", mode = "x", desc = "Obsidian - Follow Link", ft = "markdown" },
    { "<leader>oO", "<cmd>ObsidianOpen <c-r>%<cr>", desc = "Obsidian - Open", ft = "markdown" },
    { "<leader>oe", ":ObsidianExtractNote<cr>", mode = "x", desc = "Obsidian - Extract note" },
    { "O", ":ObsidianExtractNote<cr>", mode = "x", desc = "Obsidian - Extract note" },

    -- Obsidian Searches
    { "<leader>o<space>", "<cmd>ObsidianSearch<cr>", desc = "Obsidian - Search or create" },
    { "<leader>oss", "<cmd>ObsidianQuickSwitch<cr>", desc = "Obsidian - Quick switch" },
    { "<leader>osl", "<cmd>ObsidianLinks<cr>", desc = "Obsidian - Search links in file", ft = "markdown" },
    { "<leader>osL", "<cmd>ObsidianBacklinks<cr>", desc = "Obsidian - Backlinks", ft = "markdown" },
    { "<leader>ost", "<cmd>ObsidianTags<cr>", desc = "Obsidian - Tags" },
    { "<leader>osT", "<cmd>ObsidianTemplate<cr>", desc = "Obsidian - Insert template", ft = "markdown" },
    { "<leader>oit", "<cmd>ObsidianTemplate<cr>", desc = "Obsidian - Insert template", ft = "markdown" },
    { "<leader>osc", "<cmd>ObsidianTOC<cr>", desc = "Obsidian - Table of contents", ft = "markdown" },

    -- Obsidian Dailies
    { "<leader>odt", "<cmd>ObsidianToday<cr>", desc = "Obsidian - Today's page" },
    { "<leader>ody", "<cmd>ObsidianYesterday<cr>", desc = "Obsidian - Yesterday" },
    { "<leader>odT", "<cmd>ObsidianTomorrow<cr>", desc = "Obsidian - Tomorrow" },
    { "<leader>odd", "<cmd>ObsidianDailies<cr>", desc = "Obsidian - Dailies" },
    { "<leader>odm", "<cmd>ObsidianDailies -31 1<cr>", desc = "Obsidian Dailies - Last month" },
    { "<leader>odM", "<cmd>ObsidianDailies -1 31<cr>", desc = "Obsidian Dailies - Coming month" },
    { "<leader>odW", "<cmd>ObsidianDailies -7 7<cr>", desc = "Obsidian Dailies - Last week and coming week" },

    -- Obsidian Editing Commands
    { "gl", "<cmd>ObsidianLink<cr>", desc = "Obsidian - Link to a note", ft = "markdown" },
    { "gL", "<cmd>ObsidianLinkNew<cr>", desc = "Obsidian - Link to a new note", ft = "markdown" },
    { "<leader>ol", "<cmd>ObsidianLink<cr>", desc = "Obsidian - Link to a note", ft = "markdown" },
    { "<leader>oL", "<cmd>ObsidianLinkNew<cr>", desc = "Obsidian - Link to a new note", ft = "markdown" },

    { "<leader>op", "<cmd>ObsidianPasteImg<cr>", desc = "Obsidian - Paste image", ft = "markdown" },
    { "<leader><c-a>", "<cmd>ObsidianToggleCheckbox<cr>", desc = "Obsidian - Toggle checkbox", ft = "markdown" },
    { "<leader><c-x>", "<cmd>ObsidianToggleCheckbox -1<cr>", desc = "Obsidian - Toggle checkbox", ft = "markdown" },
  },
}
