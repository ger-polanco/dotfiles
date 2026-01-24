return {
    -- Git integration
    {
        "tpope/vim-fugitive",

        keys = {
            { "<leader>gs", "<cmd>G status<CR>", { desc = "Git status" } },
            { "<leader>ga", "<cmd>Gwrite<CR>",   { desc = "Git add current file" } },
            { "<leader>gc", "<cmd>Gcommit<CR>",  { desc = "Git commit" } },
            { "<leader>gb", "<cmd>G blame<CR>",  { desc = "Git blame" } },
        },
    },

    -- Git signs
    {
        "lewis6991/gitsigns.nvim",

        config = function()
            require('gitsigns').setup({
                signs = {
                    add          = { text = '┃' },
                    change       = { text = '┃' },
                    delete       = { text = '_' },
                    topdelete    = { text = '‾' },
                    changedelete = { text = '~' },
                    untracked    = { text = '┆' },
                },
                signcolumn = true,
                attach_to_untracked = false,
                watch_gitdir = { follow_files = true },
                auto_attach = true,
            })
        end
    },
}
