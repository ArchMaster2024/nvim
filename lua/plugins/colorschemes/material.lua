return {
	"marko-cerovac/material.nvim",
	enabled = false,
	config = function()
		vim.cmd("colorscheme material")
		vim.g.material_style = "deep ocean"
	end,
}
