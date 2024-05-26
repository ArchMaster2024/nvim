return {
	"NvChad/nvim-colorizer.lua",
	config = function()
		require("colorizer").setup({
			filetypes = { "*" },
			user_default_options = {
				RGB = true,
				RRGGBB = true,
				names = true,
				RRGGBBAA = false,
				AARRGGBB = false,
				rgb_fn = false,
				hsl_fn = false,
				css = false,
				css_fn = false,
				mode = "background",
				tailwind = false,
				sass = {
					enable = false,
					parsers = {
						"css",
					},
				},
				always_update = false,
			},
		})
	end,
}
