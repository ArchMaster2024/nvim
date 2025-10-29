return {
    "shaunsingh/nord.nvim",
    enabled = false,
    config = function()
        require("lualine").setup({
            options = {
                theme = "nord"
            }
        })
        vim.cmd("colorscheme nord")
    end
}
