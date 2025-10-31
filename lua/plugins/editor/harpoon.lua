return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    keys = {
        {
            "<Leader>a",
            function()
                require("harpoon"):list():add()
            end,
        },
        {
            "<Leader>e",
            function()
                require("harpoon").ui:toggle_quick_menu(require("harpoon"):list())
            end,
        },
        {
            "<C-A-h>",
            function()
                require("harpoon"):list():select(1)
            end,
        },
        {
            "<C-A-j>",
            function()
                require("harpoon"):list():select(2)
            end,
        },
        {
            "<C-A-k>",
            function()
                require("harpoon"):list():select(3)
            end,
        },
        {
            "<C-A-l>",
            function()
                require("harpoon"):list():select(4)
            end,
        },
    },
}
