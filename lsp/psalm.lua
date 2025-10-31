-- [[ ----------------------------------------------------------------- ]]
-- ||              LSP config for PHP Language (with psalm)             ||
-- [[ ----------------------------------------------------------------- ]]
-- ||                                                                   ||
-- || With this configuration you have all you need for the editor      ||
-- || recognize the PHP code and do a lot of things with the same, like ||
-- || "go to definition", find references, hover, completion, rename,   ||
-- || format, refector and many others interestings features.           ||
-- ||                                                                   ||
-- || Just remember if you modify any value of this file or any other   ||
-- || you need to got some knowledge like how lsp protocol work, how    ||
-- || configure the lsp and they're keymaps, install the lsp php and    ||
-- || configure them.                                                   ||
-- [[ ----------------------------------------------------------------- ]]
local psalmConfig = {
    cmd = { "psalm", "--language-server" },
    filetypes = { "php" },
    root_markers = {"psalm.xml", "psalm.xml.dist" }
}

return psalmConfig
