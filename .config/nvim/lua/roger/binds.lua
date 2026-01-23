-- ~/.config/nvim/lua/roger/binds.lua

-- Mod key
vim.g.mapleader = " "

-- Keybinds
local bind = vim.keymap.set

-- System copy
bind({ "n", "v", "o" }, "<leader>y", '"+y', { noremap = true, desc = "Yank motion to clipboard" })

-- System paste
bind({ "n", "v", "o" }, "<leader>p", '"+p', { desc = "Paste after from clipboard" }) -- Normal mode: Paste after cursor from system clipboard

-- Format file
bind("n", "<leader>lf", vim.lsp.buf.format, { desc = "Format file" })
