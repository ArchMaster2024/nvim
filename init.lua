-- Set leader keymapp
vim.g.mapleader = ";"

-- Start LSP servers
vim.lsp.enable({
    "angular-language-server",
    "bashls",
    "clangd",
    "cssls",
    "docker_composels",
    "dockerfilels",
    "gopls",
    "jdtls",
    "lua_ls",
    "psalm",
    "pylsp",
    "solargraph",
    "sqls",
    "ts_ls",
    "taplo",
    "vue_ls",
})

-- Start autocommands
require("autocommands/lsp_config")

-- Start the package manager
require("config/lazy")
