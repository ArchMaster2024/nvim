return {
	"shaunsingh/nord.nvim",
	enabled = false,
	config = function()
		require("lualine").setup({
			options = {
				theme = "nord",
			},
		})
		vim.g.nord_contrast = true
		vim.g.nord_borders = true
		vim.g.nord_disable_background = false
		vim.g.nord_italic = false
		vim.g.nord_uniform_diff_background = true
		vim.g.nord_bold = true
		vim.cmd("colorscheme nord")
	end,
	init = function()
		require("nord").set()
	end,
}
