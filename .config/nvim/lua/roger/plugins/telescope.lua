return {
    "nvim-telescope/telescope.nvim",
    tag = "v0.2.1",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-ui-select.nvim",
    },
    config = function()
        local telescope = require("telescope")
        local builtin = require("telescope.builtin")

        telescope.setup({
            defaults = {
                vimgrep_arguments = {
                    "rg",
                    "--color=never",
                    "--no-heading",
                    "--with-filename",
                    "--line-number",
                    "--column",
                    "--smart-case",
                },
            },
            extensions = {
                ["ui-select"] = {
                    require("telescope.themes").get_dropdown(),
                },
            },
        })

        telescope.load_extension("ui-select")

        local bind = vim.keymap.set
        bind("n", "<leader>ff", builtin.find_files, { desc = "Telescope: Find files" })
        bind("n", "<leader>fs", builtin.live_grep, { desc = "Telescope: Live grep" })
        bind("n", "<leader>fg", function()
            local ok = pcall(builtin.git_files)
            if not ok then
                vim.notify("Not a git repository", vim.log.levels.WARN, { title = "Telescope" })
            end
        end, { desc = "Telescope: Find Git files" })
    end,
}
