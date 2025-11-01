return {
    "lewis6991/gitsigns.nvim",
    enabled = false,
    opts = {
        current_line_blame = true,
    },
    config = function(configs)
        local config = configs.opts
        require("gitsigns").setup(config)
    end,
}
