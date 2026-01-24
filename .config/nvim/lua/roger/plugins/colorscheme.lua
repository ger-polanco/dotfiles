return {
  {
    "sainnhe/gruvbox-material",
    lazy = false,        -- load during startup
    priority = 1000,     -- make sure it loads before other UI stuff
    config = function()
      -- REQUIRED: set these *before* colorscheme
      vim.g.gruvbox_material_background = "soft" -- soft | medium | hard
      vim.g.gruvbox_material_foreground = "material" -- material | mix | original
      vim.g.gruvbox_material_enable_italic = true
      vim.g.gruvbox_material_enable_bold = true

      -- Optional but recommended
      vim.g.gruvbox_material_diagnostic_virtual_text = "colored"
      vim.g.gruvbox_material_diagnostic_text_highlight = true
      vim.g.gruvbox_material_diagnostic_line_highlight = false
      vim.g.gruvbox_material_diagnostic_sign_highlight = true

      -- Load the colorscheme
      vim.cmd.colorscheme("gruvbox-material")
    end,
  },
}
