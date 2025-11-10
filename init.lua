-- Set leader keymapp
vim.g.mapleader = ";"

-- Start LSP servers
vim.lsp.enable({
    "lua_ls",
    "psalm",
    "pylsp",
    "ts_ls",
    "solargraph",
    "clangd",
    "gopls",
    "bashls",
})

-- Start autocommands
require("autocommands/lsp_config")

-- Start the package manager
require("config/lazy")
