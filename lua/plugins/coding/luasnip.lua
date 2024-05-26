return {
	"L3MON4D3/LuaSnip",
	tag = "v2.2.0",
	build = "make install_jsregexp",
	dependencies = { "rafamadriz/friendly-snippets" },
	config = function()
		local ls = require("luasnip")
		-- Cargando los snippets estilo visual studio code
		require("luasnip.loaders.from_vscode").lazy_load()
		-- Cargando snippets para laravel
		require("luasnip").filetype_extend("php", {
			"blade",
			"helpers",
			"livewire",
			"snippets",
		})
		require("luasnip").filetype_extend("javascript", {
			"html",
			"nuxt-html",
			"nuxt-script",
			"script",
			"style",
			"vue",
		})
		require("luasnip").filetype_extend("typescript", {
			"html",
			"nuxt-html",
			"nuxt-script",
			"script",
			"style",
			"vue",
		})
		vim.keymap.set({ "i" }, "<C-K>", function()
			ls.expand()
		end, { silent = true })
		vim.keymap.set({ "i", "s" }, "<C-L>", function()
			ls.jump(1)
		end, { silent = true })
		vim.keymap.set({ "i", "s" }, "<C-J>", function()
			ls.jump(-1)
		end, { silent = true })

		vim.keymap.set({ "i", "s" }, "<C-E>", function()
			if ls.choice_active() then
				ls.change_choice(1)
			end
		end, { silent = true })
	end,
}
