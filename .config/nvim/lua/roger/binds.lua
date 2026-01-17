-- ~/.config/nvim/lua/roger/binds.lua

-- Mod key
vim.g.mapleader = " "

-- Keybinds
local bind = vim.keymap.set

-- System copy
bind("n", "<leader>y", '"+y', { noremap = true, desc = "Yank motion to clipboard" })
bind("v", "<leader>y", '"+y', { noremap = true, desc = "Yank visual to clipboard" })

-- System paste
bind("n", "<leader>p", '"+p', { desc = "Paste after from clipboard" }) -- Normal mode: Paste after cursor from system clipboard
bind("v", "<leader>p", '"+p', { desc = "Paste over selection from clipboard" }) -- Visual mode: Replace selection with clipboard content (after yank is preserved)
