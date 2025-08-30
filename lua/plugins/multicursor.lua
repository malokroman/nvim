return {
  "jake-stewart/multicursor.nvim",
  branch = "1.0",
  config = function()
    local mc = require("multicursor-nvim")
    mc.setup()

    local set = vim.keymap.set

    -- Add or skip adding a new cursor by matching word/selection
    set({ "n", "x" }, "zn", function()
      mc.matchAddCursor(1)
    end, { desc = "MC - Add cursor and go to next match" })
    set({ "n", "x" }, "n", function()
      mc.matchSkipCursor(1)
    end, { desc = "MC - Go to next match" })
    set({ "n", "x" }, "zN", function()
      mc.matchAddCursor(-1)
    end, { desc = "MC - Add cursor and go to previous match" })
    set({ "n", "x" }, "N", function()
      mc.matchSkipCursor(-1)
    end, { desc = "MC - Go to previous match" })

    -- Add and remove cursors with control + left click.
    set("n", "<c-leftmouse>", mc.handleMouse)
    set("n", "<c-leftdrag>", mc.handleMouseDrag)
    set("n", "<c-leftrelease>", mc.handleMouseRelease)

    -- Pressing `gaip` will add a cursor on each line of a paragraph.
    set("n", "ga", mc.addCursorOperator, { desc = "MC - Add cursor" })

    -- Clone every cursor and disable the originals.
    set({ "n", "x" }, "<leader><c-q>", mc.duplicateCursors)

    -- Align cursor columns.
    set("n", "gl", mc.alignCursors)

    -- Split visual selections by regex.
    set("x", "S", mc.splitCursors, { desc = "MC - Split cursor by regex in selection" })

    -- match new cursors within visual selections by regex.
    set("x", "M", mc.matchCursors, { desc = "MC - Match cursor by regex in selection" })

    -- bring back cursors if you accidentally clear them
    set("n", "<leader>gv", mc.restoreCursors, { desc = "MC - Restore cursors" })

    -- Add a cursor for all matches of cursor word/selection in the document.
    set(
      { "n", "x" },
      "<leader>*",
      mc.matchAllAddCursors,
      { desc = "MC - Add cursors to all matches to current symbol" }
    )

    -- Rotate the text contained in each visual selection between cursors.
    set("x", "<leader>t", function()
      mc.transposeCursors(1)
    end, { desc = "MC - Set the next cursor as the main cursor" })
    set("x", "<leader>T", function()
      mc.transposeCursors(-1)
    end, { desc = "MC - Set the previous cursor as the main cursor" })

    -- Append/insert for each line of visual selections.
    -- Similar to block selection insertion.
    set("x", "I", mc.insertVisual)
    set("x", "A", mc.appendVisual)

    -- Increment/decrement sequences, treaing all cursors as one sequence.
    set({ "n", "x" }, "g<c-a>", mc.sequenceIncrement)
    set({ "n", "x" }, "g<c-x>", mc.sequenceDecrement)

    -- -- Pressing `<leader>miwap` will create a cursor in every match of the
    -- -- string captured by `iw` inside range `ap`.
    -- -- This action is highly customizable, see `:h multicursor-operator`.
    -- set({ "n", "x" }, "<leader>m", mc.operator)

    -- Add or skip adding a new cursor by matching diagnostics.
    set({ "n", "x" }, "]d", function()
      mc.diagnosticAddCursor(1)
    end)
    set({ "n", "x" }, "[d", function()
      mc.diagnosticAddCursor(-1)
    end)
    set({ "n", "x" }, "]s", function()
      mc.diagnosticSkipCursor(1)
    end)
    set({ "n", "x" }, "[S", function()
      mc.diagnosticSkipCursor(-1)
    end)

    -- Press `mdip` to add a cursor for every error diagnostic in the range `ip`.
    set({ "n", "x" }, "md", function()
      -- See `:h vim.diagnostic.GetOpts`.
      mc.diagnosticMatchCursors({ severity = vim.diagnostic.severity.ERROR })
    end)
    -- Disable and enable cursors.
    set({ "n", "x" }, "<c-q>", mc.toggleCursor)

    -- Mappings defined in a keymap layer only apply when there are
    -- multiple cursors. This lets you have overlapping mappings.
    mc.addKeymapLayer(function(layerSet)
      -- Select a different cursor as the main one.
      layerSet({ "n", "x" }, "<left>", mc.prevCursor)
      layerSet({ "n", "x" }, "<right>", mc.nextCursor)

      -- Delete the main cursor.
      layerSet({ "n", "x" }, "<leader>x", mc.deleteCursor)

      -- Enable and clear cursors using escape.
      layerSet("n", "<esc>", function()
        if not mc.cursorsEnabled() then
          mc.enableCursors()
        else
          mc.clearCursors()
        end
      end)
    end)

    -- Customize how cursors look.
    local hl = vim.api.nvim_set_hl
    hl(0, "MultiCursorCursor", { reverse = true })
    hl(0, "MultiCursorVisual", { link = "Visual" })
    hl(0, "MultiCursorSign", { link = "SignColumn" })
    hl(0, "MultiCursorMatchPreview", { link = "Search" })
    hl(0, "MultiCursorDisabledCursor", { reverse = true })
    hl(0, "MultiCursorDisabledVisual", { link = "Visual" })
    hl(0, "MultiCursorDisabledSign", { link = "SignColumn" })
  end,
}
