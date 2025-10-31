-- [[ --------------------------------------------------------- ]]
-- ||                My own directory structure                 ||
-- [[ --------------------------------------------------------- ]]
-- ||                                                           ||
-- || This is my personal directory structure for work with the ||
-- || editor, this structure lived concrete inside of lua dir   ||
-- || if you like you modify feel free for do this, just have   ||
-- || the next thing in mind.                                   ||
-- ||                                                           ||
-- || You need to create, edit name or delete folder and move   ||
-- || they content to the other directory listed here before do ||
-- || anything, if you don't do these, your plugins not work    ||
-- || properly.                                                 ||
-- [[ --------------------------------------------------------- ]]
local configs = {
    pluginsDir = "plugins",
    categories = {
        "colorschemes",
        "ui",
        "editor",
        --"coding",
    },
    generateConfig = function(self)
        local config = {
            spec = {}
        }

        for i, v in ipairs(self.categories) do
            local registerCategory = {
                import = self.pluginsDir .. "." .. v
            }

            table.insert(config.spec, registerCategory)
        end

        return config
    end
}

return configs
