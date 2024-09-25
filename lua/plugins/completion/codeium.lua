return {
	"monkoose/neocodeium",
	event = "VeryLazy",
	config = function()
		local neocodeium = require("neocodeium")
		neocodeium.setup({
			manual = true,
			TelescopePrompt = false,
			["dap-repl"] = false,
		})
		vim.api.nvim_create_autocmd({ "User" }, {
			pattern = "NeoCodeiumCompletionDisplayed",
			callback = function()
				require("cmp").abort()
			end,
		})
		vim.keymap.set("i", "<D-f>", neocodeium.accept)
		vim.keymap.set("i", "<D-w>", neocodeium.accept_word)
		vim.keymap.set("i", "<D-a>", neocodeium.accept_line)
		vim.keymap.set("i", "<D-c>", neocodeium.clear)
		vim.keymap.set("i", "<D-e>", neocodeium.cycle_or_complete)
	end,
}
