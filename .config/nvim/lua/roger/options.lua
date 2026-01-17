-- ~/.config/nvim/lua/roger/options.lua

-- alias
local opt = vim.opt

-- Numbers
opt.number = true
opt.relativenumber = true

-- Tabs
opt.expandtab = true -- Use spaces instead of tabs
opt.tabstop = 4      -- A tab is 2 spaces
opt.shiftwidth = 4   -- Indentation amount when auto-indenting
opt.softtabstop = 4  -- Number of spaces tab uses while editing

-- Line wrap
opt.wrap = false

-- Icons
opt.termguicolors = true

-- Scroll
opt.scrolloff = 8 -- Scroll when n lines remaining

-- Enable persistent history
opt.undofile = true
opt.undodir = vim.fn.stdpath("state") .. "/undo"

-- Clean explorer
vim.g.netrw_banner = 0    -- Hide banner
vim.g.netrw_liststyle = 3 -- Tree-style listing
vim.g.netrw_altv = 1
vim.g.netrw_alto = 0

-- Other
opt.signcolumn = yes
opt.updatetime = 250
