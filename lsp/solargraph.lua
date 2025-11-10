-- [[ --------------------------------------------------- ]]
-- ||       LSP config for Ruby Language (Solargraph)     ||
-- [[ --------------------------------------------------- ]]
-- ||                                                     ||
-- || The most used LSP for ruby language,                ||
-- || with the most highest performance in comparition    ||
-- || with others LSP from ruby                           ||
-- [[ --------------------------------------------------- ]]
local solargraphConfig = {
    cmd = { "solargraph", "stdio" },
    filetypes = { "ruby" },
    root_markers = { "Gemfile", "Gemfile.lock", ".git" },
    settings = {
        solargraph = {
            diagnostics = true,
        },
    },
}

return solargraphConfig
