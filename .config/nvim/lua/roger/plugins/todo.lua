return {
    -- PERF: This is perfect
    -- NOTE: This is a note
    -- TODO: This needs to be done
    -- HACK: This looks funny
    -- FIX: This is broken
    -- WARNING: This is a warning

    "folke/todo-comments.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    opts = {},

    config = function()
        local todo = require("todo-comments")
        todo.setup({})

        local bind = vim.keymap.set

        bind("n", "]t", todo.jump_next, { desc = "Todo: Jump next" })
        bind("n", "[t", todo.jump_prev, { desc = "Todo: Jump prev" })
        bind("n", "<leader>ft", "<cmd>TodoTelescope<CR>", { desc = "Todo: Open in Telescope" })
    end,
}
