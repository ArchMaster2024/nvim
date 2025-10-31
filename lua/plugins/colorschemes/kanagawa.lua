return {
    "rebelot/kanagawa.nvim",
    opts = {
        compile = false,
        undercurl = true,
        commentStyle = {
            italic = true
        },
        functionStyle = {},
        keywordStyle = {
            italic = true
        },
        statementStyle = {
            bold = true
        },
        typeStyle = {},
        transparent = false,
        dimInactive = false,
        terminalColors = true,
        colors = {
            pallete = {},
            theme = {
                wave = {},
                lotus = {},
                dragon = {},
                all = {}
            }
        },
        overrides = function(colors)
            return {}
        end,
        theme = "dragon",
        background = {
            dark = "dragon",
            light = "lotus"
        }
    },
    enabled = false,
    config = function(configs)
        local config = configs.opts
        require("kanagawa").setup(config)
        vim.cmd("colorscheme kanagawa")
    end
}
