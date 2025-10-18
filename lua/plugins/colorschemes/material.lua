return {
    "marko-cerovac/material.nvim",
    enabled = false,
    config = function()
        require("material").setup({
            contrast = {
                terminal = true,
                sidebars = true,
                floating_windows = true,
                cursor_line = true,
                lsp_virtual_text = true,
            },
            plugins = {
                "dap",
                "dashboard",
                "flash",
                "gitsigns",
                "harpoon",
                "indent-blankline",
                "neogit",
                "neo-tree",
                "noice",
                "nvim-cmp",
                "nvim-tree",
                "nvim-web-devicons",
                "telescope",
                "trouble",
                "which-key",
                "nvim-notify",
            },
            high_visibility = {
                darker = true,
                lighter = false,
            },
            lualine_style = "stealth",
        })
        vim.g.material_style = "deep ocean"
        vim.cmd("colorscheme material")
    end,
}
