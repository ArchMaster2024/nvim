return {
    "stevearc/aerial.nvim",
    opts = {},
    keys = {
        {
            "<Leader>at",
            ":AerialToggle! left<cr>"
        },
        {
            "{",
            ":AerialPrev<cr>",
            buffer = true
        },
        {
            "}",
            ":AerialNext<cr>",
            buffer = true
        }
    },
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons"
    }
}
