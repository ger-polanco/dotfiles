return {
  -- Move
  {
    'echasnovski/mini.move',
    version = '*',
    config = function()
      local configs = require("mini.move")
      configs.setup({
        mappings = {
          -- NOTE: Visual mode
          left = '<S-h>',
          down = '<S-j>',
          up = '<S-k>',
          right = '<S-l>',

          -- NOTE: Normal mode (one line)
          line_left = '',
          line_down = '',
          line_up = '',
          line_right = '',
        },
      })
    end
  },
  -- Surround
  {
    'echasnovski/mini.surround',
    version = '*',
    config = function()
      require("mini.surround").setup({})
    end
  },
  -- ai (Better va* and vi*)
  {
    "echasnovski/mini.ai",
    event = "VeryLazy",
    config = function()
      require("mini.ai").setup()
    end,
  }
}
