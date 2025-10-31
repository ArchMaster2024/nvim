return {
    "mistweaverco/kulala.nvim",
    keys = {
        { "<leader>Rs", "<cmd>lua require('kulala').run()<cr>", desc = "Send request" },
        { "<leader>Ra", "<cmd>lua require('kulala').run_all()<cr>", desc = "Send all requests" },
        { "<leader>Rb", "<cmd>lua require('kulala').scratchpad()<cr>", desc = "Open scratchpad" },
    },
    ft = { "http", "rest" },
    opts = {
        global_keymaps = false,
        global_keymaps_prefix = "<leader>k",
        kulala_keymaps_prefix = "",
    },
}
