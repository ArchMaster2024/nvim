return {
	"rebelot/kanagawa.nvim",
	enabled = true,
	config = function()
		require("kanagawa").setup({
			compile = false,
			terminalColors = true,
			undercurl = true,
			theme = "wave",
			commentStyle = { italic = true },
			keywordStyle = { italic = true },
			statementStyle = { bold = true },
			transparent = false,
			dimInactive = true,
			background = {
				dark = "wave",
				light = "lotus",
			},
		})

		vim.cmd("colorscheme kanagawa")
	end,
	--[[ init = function()
		require("kanagawa").load()
	end, ]]
}
