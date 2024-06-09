return {
	"rebelot/kanagawa.nvim",
	enabled = false,
	config = function()
		require("kanagawa").setup({
			compile = false,
			terminalColors = true,
			undercurl = true,
			theme = "dragon",
			commentStyle = { italic = true },
			keywordStyle = { italic = true },
			statementStyle = { bold = true },
			transparent = false,
			dimInactive = true,
			background = {
				dark = "dragon",
				light = "lotus",
			},
		})

		vim.cmd("colorscheme kanagawa")
	end,
	--[[ init = function()
		require("kanagawa").load()
	end, ]]
}
