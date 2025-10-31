return {
    "j-morano/buffer_manager.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    keys = {
        {
            "<Leader>bm",
            "<cmd>lua require('buffer_manager.ui').toggle_quick_menu()<cr>",
        },
    },
}
