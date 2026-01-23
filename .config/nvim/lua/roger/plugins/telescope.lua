return {
    "nvim-telescope/telescope.nvim",
    tag = "v0.2.1",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        require("telescope").setup({
            defaults = {
                vimrep_arguments = {
                    "rg",
                    "--color=never",
                    "--no-heading",
                    "--with-filename",
                    "--line-number",
                    "--column",
                    "--smart-case",
                },
            },
        })

        local bind = vim.keymap.set

        bind("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Telescope: Find files" })
        bind("n", "<leader>fs", "<cmd>Telescope live_grep<CR>", { desc = "Telescope: Live grep" })
        bind("n", "<leader>fg", function()
            local ok = pcall(require("telescope.builtin").git_files)
            if not ok then
                vim.notify("Not a git repository", vim.log.levels.WARN, { title = "Telescope" })
            end
        end, { desc = "Telescope: Find Git files (warn if not a git repo)" })
    end,
}
