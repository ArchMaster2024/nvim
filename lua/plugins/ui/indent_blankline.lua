return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
        exclude = {
            filetypes = {
                "dashboard",
                "help",
                "terminal",
                "nofile"
            }
        }
    }
}
