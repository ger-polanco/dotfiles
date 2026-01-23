return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim",
    },

    config = function()
        local harpoon = require("harpoon")

        harpoon.setup({})

        local bind = vim.keymap.set

        -- Add file
        bind("n", "<leader>a", function()
            harpoon:list():add()
        end, { desc = "Harpoon: Add current buffer" })

        -- Quick menu
        bind("n", "<leader><Tab>", function()
            harpoon.ui:toggle_quick_menu(harpoon:list())
        end, { desc = "Harpoon: View buffers" })

        -- Quick switch
        bind("n", "<leader>1", function() harpoon:list():select(1) end, { desc = "Harpoon: Switch to buffer 1" })
        bind("n", "<leader>2", function() harpoon:list():select(2) end, { desc = "Harpoon: Switch to buffer 2" })
        bind("n", "<leader>3", function() harpoon:list():select(3) end, { desc = "Harpoon: Switch to buffer 3" })
        bind("n", "<leader>4", function() harpoon:list():select(4) end, { desc = "Harpoon: Switch to buffer 4" })
        bind("n", "<leader>5", function() harpoon:list():select(5) end, { desc = "Harpoon: Switch to buffer 5" })

    end
}

            

