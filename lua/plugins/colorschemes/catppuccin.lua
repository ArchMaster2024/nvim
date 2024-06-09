return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	enabled = false,
	config = function()
		require("catppuccin").setup({
			-- NOTE: Valores posibles: latte, frappe, macchiato, mocha
			flavour = "auto",
			background = {
				light = "latte",
				dark = "mocha",
			},
			transparent_background = false,
			show_end_of_buffer = false,
			term_colors = false,
			no_italic = false,
			no_bold = false,
			no_underline = true,
			styles = {
				comment = { "italic" },
			},
			default_integrations = true,
			integrations = {
				cmp = true,
				gitsigns = true,
				treesitter = true,
				notify = true,
				flash = true,
				harpoon = true,
				indent_blankline = {
					enabled = true,
					scope_color = "",
					colored_indent_levels = false,
				},
				markdown = true,
				mason = true,
				neotree = true,
				neogit = true,
				noice = true,
				dap = true,
				dap_ui = true,
				telescope = {
					enabled = true,
				},
				lsp_trouble = true,
				which_key = true,
			},
		})
		vim.cmd("colorscheme catppuccin")
	end,
}
