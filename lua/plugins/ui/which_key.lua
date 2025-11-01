return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
        preset = "modern", -- "classic" (default) | "modern" | "helix"
    },
    keys = {
        {
            "<Leader>?",
            function()
                require("which-key").show()
            end,
            desc = "Buffer Local keymaps (which-key)",
        },
    },
}
