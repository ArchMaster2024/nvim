return {
    "EdenEast/nightfox.nvim",
    enabled = false,
    opts = {
        options = {
            compile_path = vim.fn.stdpath("cache") .. "/nightfox",
            compile_file_suffix = "_compiled",
            transparent = false,
            terminal_colors = true,
            dim_inactive = false,
            module_default = true,
            colorblind = {
                enable = false,
                simulate_only = false,
                severity = {
                    protan = 0,
                    deutan = 0,
                    tritan = 0,
                },
            },
            styles = {
                comments = "NONE",
                conditionals = "NONE",
                constants = "NONE",
                functions = "NONE",
                keywords = "NONE",
                numbers = "NONE",
                operators = "NONE",
                strings = "NONE",
                types = "NONE",
                variables = "NONE",
            },
            inverse = {
                match_paren = false,
                visual = false,
                search = false,
            },
            modules = {
                -- ...
            },
        },
        palettes = {},
        specs = {},
        groups = {},
    },
    config = function(configs)
        local config = configs.opts
        require("nightfox").setup(config)
        --[[
        -- NOTE: Theme variants:
        -- # Dark themes
        -- - nightfox
        -- - duskfox
        -- - nordfox
        -- - terafox
        -- - carbonfox
        --
        -- # Light themes
        -- - dayfox
        -- - dawnfox
        --]]
        vim.cmd("colorscheme nightfox")
    end,
}
