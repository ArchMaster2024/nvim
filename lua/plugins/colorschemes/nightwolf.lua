return {
    "ricardoraposo/nightwolf.nvim",
    lazy = false,
    priority = 1000,
    enabled = false,
    opts = {
        theme = "black", -- "black", "dark-blue", "gray", "dark-gray" and "light"
        italic = true,
        transparency = false,
        palette_overrides = {},
        highlight_overrides = {}
    },
    config = function(configs)
        local config = configs.opts
        require("nightwolf").setup(config)
        vim.cmd("colorscheme nightwolf")
    end
}
