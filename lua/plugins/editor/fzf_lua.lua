return {
    "ibhagwan/fzf-lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    opts = {},
    keys = {
        {
            "<Leader>flb",
            ":FzfLua buffers<cr>"
        },
        {
            "<Leader>flg",
            ":FzfLua grep<cr>"
        },
        {
            "<Leader>flds",
            ":FzfLua lsp_document_symbols<cr>"
        },
        {
            "<Leader>flf",
            ":FzfLua files<cr>"
        },
        {
            "<Leader>fllg",
            ":FzfLua live_grep<cr>"
        }
    }
}
