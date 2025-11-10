-- [[ ------------------------------------------------------------- ]]
-- ||          LSP config for PHP Languague (with phpactor)         ||
-- [[ ------------------------------------------------------------- ]]
-- ||                                                               ||
-- || The configuration lsp file for phpactor lsp, this is one of   ||
-- || the most used on the nvim comunity for PHP, personally, I use ||
-- || this more than psalm, but I try it with psalm for a little    ||
-- || time for compare both and select one of them for uses in my   ||
-- || day to day work with PHP.                                     ||
-- [[ ------------------------------------------------------------- ]]
local phpactorConfig = {
    cmd = { "phpactor", "language-server" },
    filetypes = { "php" },
    root_markers = { ".git", "composer.json", ".phpactor.json", ".phpactor.yaml" },
    workspace_required = true,
}

return phpactorConfig
