return {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    enabled = false,
    opts = {
        variant = "auto",
        transparent = false,
        saturation = 0.8,
        italic_comments = true,
        hide_fillchars = false,
        borderless_pickers = true,
        terminal_colors = true,
        cache = false,
        highlights = {
            Comment = {
                fg = "#696969",
                bg = "NONE",
                italic = true
            }
        },
        overrides = function(colors)
            return {
                Comment = {
                    fg = colors.green,
                    bg = "NONE",
                    italic = true
                },
                ["@property"] = {
                    fg = colors.magenta,
                    bold = true
                }
            }
        end,
        colors = {
            bd = "#000000",
            green = "#00ff00",
            dark = {
                magenta = "#ff00ff",
                fg = "#eeeeee"
            },
            light = {
                red = "#ff5c57",
                cyan = "#5ef1ff"
            }
        }
    },
    config = function(configs)
        local config = configs.opts
        require("cyberdream").setup(config)
        vim.cmd("colorscheme cyberdream")
    end
}
