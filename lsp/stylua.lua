-- [[ --------------------------------------------- ]]
-- ||      LSP config for Lua language (stylua)     ||
-- [[ --------------------------------------------- ]]
-- ||                                               ||
-- || This is the second language server for lua I  ||
-- || use on the day, depend on the project config  ||
-- || I select this or lua_ls, you can choose one   ||
-- || of this two or add other for use              ||
-- [[ --------------------------------------------- ]]
local stylua = {
    cmd = { "stylua", "--lsp" },
    filetypes = { "lua" },
    root_markers = { ".stylua.toml", "stylua.toml", ".editorconfig" },
}

return stylua
