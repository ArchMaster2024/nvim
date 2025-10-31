-- [[ ------------------------------------------------------- ]]
-- ||              LSP config for Python (pylsp)              ||
-- [[ ------------------------------------------------------- ]]
-- ||                                                         ||
-- || The configuration file for LSP for python, specifically ||
-- || pylsp (python_lsp_server), this are very used for users ||
-- || who work with python with neovim.                       ||
-- [[ ------------------------------------------------------- ]]
local pylspConfig = {
    cmd = { 'pylsp' },
    filetypes = { 'python' },
    root_markers = {
        'pyproject.toml',
        'setup.py',
        'setup.cfg',
        'requirements.txt',
        'Pipfile',
        '.git',
    }
}

return pylspConfig
