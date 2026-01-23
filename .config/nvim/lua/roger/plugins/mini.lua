return {
    -- Mini Move: Move lines
    {
        'echasnovski/mini.move',
        version = '*',
        config = function()
            local configs = require("mini.move").setup({
                mappings = {
                    left = '<S-h>',
                    down = '<S-j>',
                    up = '<S-k>',
                    right = '<S-l>',
                },
            })
        end
    },

    -- Mini Surround: select surrounded 
    {
        'echasnovski/mini.surround',
        version = '*',
        config = function()
            require("mini.surround").setup({})
        end
    },

    -- Mini ai: better va* and vi*
    {
        "echasnovski/mini.ai",
        event = "VeryLazy",
        config = function()
            require("mini.ai").setup({})
        end
    },

    -- Mini jump: supercharged f/t motions
    {
        "nvim-mini/mini.jump",
        version = "*", -- stable 

        config = function()
            local jump = require("mini.jump")
            jump.setup({})
        end
    },
}
