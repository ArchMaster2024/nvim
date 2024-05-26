return {
	"rebelot/kanagawa.nvim",
	lazy = false,
	enabled = false,
	config = function()
		require("kanagawa").setup({
			terminalColors = true,
			theme = "dragon",
			statementStyle = {
				bold = true,
			},
		})

		require("kanagawa").load()
	end,
}
