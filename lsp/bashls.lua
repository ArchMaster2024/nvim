-- [[ ------------------------------------------------------------- ]]
-- ||          LSP config for Bash Languague (with bashls)         ||
-- [[ ------------------------------------------------------------- ]]
-- ||                                                               ||
-- || The configuration lsp file for bash-language-server lsp, this ||
-- || one of the most used on the nvim comunity for bash Languague. ||
-- [[ ------------------------------------------------------------- ]]
---@type vim.lsp.config
local bashls = {
    cmd = { "bash-language-server", "start" },
    settings = {
        bashIde = {
            globPattern = vim.env.GLOB_PATTERN or "*@(.sh|.inc|.bash|.command)",
        },
    },
    filetypes = { "sh", "bash" },
    root_markers = { ".git" },
}

return bashls
