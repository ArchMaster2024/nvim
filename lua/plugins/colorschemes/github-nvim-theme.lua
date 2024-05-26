return {
	"projekt0n/github-nvim-theme",
	lazy = false,
	priority = 1000,
	enabled = false,
	config = function()
		require("github-theme").setup({
			dim_inactive = false,
			terminal_colors = true,
			module_default = true,
		})

		vim.cmd("colorscheme github_dark_high_contrast")
	end,
}
