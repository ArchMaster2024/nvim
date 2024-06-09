return {
	"miikanissi/modus-themes.nvim",
	priority = 1000,
	enabled = false,
	config = function()
		require("modus-themes").setup({
			style = "auto",
			-- NOTE: Las diferentes variantes disponibles son:
			--              - default
			--              - tinted
			--              - deuteranopia
			--              - tritanopia
			variant = "default",
			transparent = false,
			dim_inactive = false,
			hide_inactive_statusline = false,
			styles = {
				comments = { italic = true },
				keywords = { italic = true },
			},
		})
		vim.cmd("colorscheme modus")
	end,
}
