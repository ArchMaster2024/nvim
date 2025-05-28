return {
    "Exafunction/windsurf.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "hrsh7th/nvim-cmp",
    },
    config = function()
        require("codeium").setup({
            enable_chat = true,
            enable_cmp_source = false,
            virtual_text = {
                enabled = true,
                key_bindings = {
                    accept = "<Tab>",
                    accept_word = "<S-Tab>",
                    accept_line = "<C-D-Tab>",
                    clear = "<M-D-Space>",
                    next = "<M-D-]>",
                    prev = "<M-D-[>"
                }
            },
            workspace_root = {
                use_lsp = true
            }
        })
    end
}
