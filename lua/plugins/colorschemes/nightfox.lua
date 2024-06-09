return {
	"EdenEast/nightfox.nvim",
	enabled = false,
	config = function()
		require("nightfox").setup({
			transparent = false,
			terminal_colors = true,
			dim_inactive = true,
			module_default = true,
		})
		vim.cmd("colorscheme nightfox")
	end,
}
