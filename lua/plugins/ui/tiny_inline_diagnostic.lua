return {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy",
    priority = 1000,
    opts = {
        preset = "powerline", -- "modern" (default), "classic", "minimal", "powerline", "ghost", "simple", "nonerdfont"
        options = {
            multilines = {
                enabled = true,
            },
            show_source = {
                enabled = true,
            },
            add_messages = {
                display_count = true,
            },
        },
    },
    config = function(configs)
        local config = configs.opts
        require("tiny-inline-diagnostic").setup(config)
        vim.diagnostic.config({ virtual_text = false }) -- Disable Neovim's default virtual text diagnostics
    end,
}
