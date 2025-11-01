return {
    "Exafunction/windsurf.vim",
    event = "BufEnter",
    keys = {
        {
            mode = "i",
            "<C-x>",
            function()
                vim.fn["codeium#Clear"]()
            end,
            {
                expr = true,
                silent = true,
            },
        },
        {
            mode = "i",
            "<C-A-n>",
            function()
                vim.fn["codeium#CycleCompletions"](1)
            end,
            {
                expr = true,
                silent = true,
            },
        },
        {
            mode = "i",
            "<C-A-p>",
            function()
                vim.fn["codeium#CycleCompletions"](-1)
            end,
            {
                expr = true,
                silent = true,
            },
        },
        {
            mode = "i",
            "<Tab>",
            function()
                vim.fn["codeium#Accept"]()
            end,
            {
                expr = true,
                silent = true,
            },
        },
    },
}
