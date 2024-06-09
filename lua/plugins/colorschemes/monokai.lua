return {
	"tanvirtin/monokai.nvim",
	enabled = false,
	config = function()
		-- NOTE: Los diferentes temas son: pro, soda y ristretto
		require("monokai").setup({
			-- palette = require("monokai").pro,
			-- palette = require("monokai").soda,
			palette = require("monokai").ristretto,
		})
	end,
}
