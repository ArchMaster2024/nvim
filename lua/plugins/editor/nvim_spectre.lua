return {
    "nvim-pack/nvim-spectre",
    keys = {
        {
            "<Leader>S",
            "<cmd>lua require('spectre').toggle()<cr>",
        },
        {
            "<Leader>sw",
            "<cmd>lua require('spectre').open_visual({ select_word = true })<cr>",
        },
        {
            "<Leader>sw",
            "<cmd>lua require('spectre').open_visual()<cr>",
            mode = "v",
        },
        {
            "<Leader>sp",
            "<cmd>lua require('spectre').open_file_search({ select_word = true})<cr>",
        },
    },
}
