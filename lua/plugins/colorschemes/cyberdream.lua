return {
	"scottmckendry/cyberdream.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		local cyberdream = require("lualine.themes.cyberdream")
		require("cyberdream").setup({
			transparent = false,
			italic_comments = true,
			borderless_telescope = true,
			terminal_colors = true,
			theme = {
				variant = "default",
			},
		})
		vim.cmd("colorscheme cyberdream")
	end,
	init = function()
		require("cyberdream").load()
	end,
}
