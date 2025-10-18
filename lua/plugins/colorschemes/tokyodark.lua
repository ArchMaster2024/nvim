return {
    "tiagovla/tokyodark.nvim",
    enabled = false,
    opts = {
        styles = {
            comments = { italic = false, bold = false },
            keywords = { italic = false, bold = true },
            identifiers = { italic = false, bold = true },
            functions = { italic = true, bold = true },
            variables = { italic = false, bold = true },
        }
    },
    config = function(_, opts)
        require("tokyodark").setup(opts)
        vim.cmd([[colorscheme tokyodark]])
    end,
}
