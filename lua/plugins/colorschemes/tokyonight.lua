return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    enabled = false,
    opts = {
        style = "night" -- "moon", "storm", "night" and "day" <- (light theme)
    },
    config = function(configs)
        local config = configs.opts
        require("lualine").setup({
            options = {
                theme = "tokyonight"
            }
        })
        require("tokyonight").setup(config)
        vim.cmd("colorscheme tokyonight")
    end
}
