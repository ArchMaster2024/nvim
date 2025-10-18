return {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    enabled = false,
    config = function()
        local cyberdream = require("lualine.themes.cyberdream")
        require("cyberdream").setup({
            transparent = false,
            italic_comments = true,
            borderless_pickers = true,
            terminal_colors = true,
            options = {
                variant = "default",
            },
        })
        vim.cmd("colorscheme cyberdream")
    end,
    init = function()
        require("cyberdream").load()
    end,
}
