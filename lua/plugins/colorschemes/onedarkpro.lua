return {
	"olimorris/onedarkpro.nvim",
	priority = 1000,
	enabled = false,
	config = function()
		require("onedarkpro").setup({
			options = {
				cursorline = true,
				transparency = false,
				terminal_colors = true,
				lualine_transparency = false,
				highlight_inactive_windows = false,
			},
			plugins = {
				flash_nvim = true,
				gitsigns = true,
				indentline = true,
				neo_tree = true,
				nvim_cmp = true,
				nvim_dap = true,
				nvim_dap_ui = true,
				nvim_lsp = true,
				nvim_notify = true,
				nvim_tree = true,
				startify = true,
				telescope = true,
				treesitter = true,
				trouble = true,
				which_key = true,
			},
		})
		vim.cmd("colorscheme onedark_dark")
	end,
}
