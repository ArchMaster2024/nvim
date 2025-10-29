return {
    "AlexvZyl/nordic.nvim",
    lazy = false,
    priority = 1000,
    enabled = false,
    config = function()
        require("lualine").setup({
            options = {
                theme = "nordic"
            }
        })
        require('nordic').load()
    end
}
