# Neovim Configuration

Personal Neovim setup focused on speed, minimalism, and practical defaults.
Built around Lua with a lightweight plugin set and fast startup times.

## Package Manager

This configuration uses **[lazy.nvim](https://github.com/folke/lazy.nvim)** for plugin management.

Lazy loads plugins automatically and keeps the config modular and performant.

## Plugins

### UI / Appearance

* **[gruvbox-material](https://github.com/sainnhe/gruvbox-material)** – Gruvbox-based colorscheme with improved contrast and customization.
* **[lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)** – Fast and customizable statusline.

### Git Integration

* **[vim-fugitive](https://github.com/tpope/vim-fugitive)** – Powerful Git wrapper for Neovim.

### Navigation & Search

* **[telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)** – Fuzzy finder for files, buffers, grep, and more.
* **[telescope-ui-select.nvim](https://github.com/nvim-telescope/telescope-ui-select.nvim)** – Replaces default UI selections with Telescope.
* **[harpoon](https://github.com/ThePrimeagen/harpoon)** – Quickly jump between frequently used files.

### LSP / Formatting / Tooling

* **[mason.nvim](https://github.com/mason-org/mason.nvim)** – Portable package manager for LSP servers, formatters, and linters.
* **[none-ls.nvim](https://github.com/nvimtools/none-ls.nvim)** – Inject external tools into Neovim’s LSP client.

### Editing Enhancements

* **[mini.nvim](https://github.com/echasnovski/mini.nvim)** modules:

  * `mini.surround` – Surround text objects.
  * `mini.ai` – Enhanced text objects.
  * `mini.jump` – Quick cursor movement.

### Utility

* **[todo-comments.nvim](https://github.com/folke/todo-comments.nvim)** – Highlight and search TODO/FIXME comments.
* **[plenary.nvim](https://github.com/nvim-lua/plenary.nvim)** – Lua utility library used by many plugins.

## Requirements

* Neovim **0.9+** (recommended: latest stable)
* Git
* A Nerd Font (optional, but recommended for icons)

## Philosophy

This config aims to stay:

* **Fast** – avoid unnecessary plugins
* **Readable** – simple Lua structure
* **Practical** – defaults that improve everyday workflows
* **Extensible** – easy to modify without fighting abstractions

---

Feel free to fork or borrow ideas.
