return {
	"navarasu/onedark.nvim",
	lazy = false,
	enabled = false,
	config = function()
		require("onedark").setup({
			style = "deep",
			term_colors = true,
		})

		require("onedark").load()
	end,
}
