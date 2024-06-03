return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	keys = {
		{
			"<Tab>",
			"<Cmd>BufferLineCycleNext<CR>",
			desc = "Next tab",
		},
		{
			"<S-Tab>",
			"<Cmd>BufferLineCyclePrev<CR>",
			desc = "Prev tab",
		},
	},
	config = function()
		require("bufferline").setup({
			options = {
				separator_style = "slant",
			},
		})
	end,
}
