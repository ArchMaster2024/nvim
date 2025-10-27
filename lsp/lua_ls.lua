-- [[ ------------------------------------------------- ]]
-- ||        LSP config for Lua language (lua_ls)       ||
-- [[ ------------------------------------------------- ]]
-- ||                                                   ||
-- || The lsp config file for lua language, this file   ||
-- || contain the config for lua_language_server, this  ||
-- || is my primary language server for lua language,   ||
-- || but you can uses lsp would you like for lua       ||
-- [[ ------------------------------------------------- ]]
local luaLs = {
    cmd = { 'lua-language-server' },
    filetypes = { 'lua' },
    root_markers = {
        '.luarc.json',
        '.luarc.jsonc',
        '.luacheckrc',
        '.stylua.toml',
        'stylua.toml',
        'selene.toml',
        'selene.yml',
        '.git',
    }
}

return luaLs
