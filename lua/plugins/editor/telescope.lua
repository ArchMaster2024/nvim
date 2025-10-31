return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    keys = {
        {
            "<Leader>tff",
            ":Telescope find_files<cr>"
        },
        {
            "<Leader>tgs",
            ":Telescope grep_string<cr>"
        },
        {
            "<Leader>tlg",
            ":Telescope live_grep<cr>"
        },
        {
            "<Leader>tk",
            ":lua require('telescope.builtin').keymaps(require('telescope.themes').get_dropdown())<cr>"
        }
    }
}
