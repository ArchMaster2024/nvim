return {
    "navarasu/onedark.nvim",
    priority = 1000, -- make sure to load this before all the other start plugins
    enabled = false,
    opts = {
        style = "deep", -- "dark", "darker", "cool", "deep", "warm" and "warmer"
    },
    config = function(configs)
        local config = configs.opts
        require("onedark").setup(config)
        require("onedark").load()
    end,
}
