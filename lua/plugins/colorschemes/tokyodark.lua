return {
	"tiagovla/tokyodark.nvim",
	enabled = true,
	config = function()
		require("tokyodark").setup({
			transparent_background = false,
			gamma = 1.00,
			terminal_colors = true,
		})

		vim.cmd([[colorscheme tokyodark]])
	end,
}
