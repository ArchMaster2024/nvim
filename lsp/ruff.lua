-- [[ --------------------------------------------------- ]]
-- ||         LSP config for Python Language (Ruff)       ||
-- [[ --------------------------------------------------- ]]
-- ||                                                     ||
-- || The fasted LSP for python language, written in rust ||
-- || with the most highest performance in comparition    ||
-- || with others LSP from python                         ||
-- [[ --------------------------------------------------- ]]
local ruffConfig = {
    cmd = { 'ruff', 'server' },
    filetypes = { 'python' },
    root_markers = { 'pyproject.toml', 'ruff.toml', '.ruff.toml', '.git' },
    settings = {}
}

return ruffConfig
