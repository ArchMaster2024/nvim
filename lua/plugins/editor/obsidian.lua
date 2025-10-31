return {
    "obsidian-nvim/obsidian.nvim",
    version = "*",
    ft = "markdown",
    opts = {
        legacy_commands = false,
        workspaces = {
            {
                name = "personal",
                path = "~/Documentos/Obsidian/Vaults/brain/brain",
            },
        },
        ui = {
            enable = false,
        },
    },
    config = true,
}
