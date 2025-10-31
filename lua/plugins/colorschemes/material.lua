return {
    "marko-cerovac/material.nvim",
    enabled = false,
    opts = {
        lualine_style = "stealth", -- "default" or "stealth"
    },
    config = function(configs)
        local config = configs.opts
        require("material").setup(config)
        vim.g.material_style = "deep ocean" -- "oceanic", "deep ocean", "palenight", "darker" and "lighter" (light theme)
        vim.cmd("colorscheme material")
    end
}
