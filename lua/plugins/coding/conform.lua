return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	keys = {
		{
			-- Mapeo para lanzar el formateador al estar dentro de un archivo/fichero
			"<leader>f",
			function()
				require("conform").format({ async = true, lsp_fallback = true })
			end,
			mode = "",
			desc = "Format buffer",
		},
	},
	-- Se envian las opciones de configuracion de conform
	opts = {
		-- Se definen los formateadores por lenguaje
		formatters_by_ft = {
			lua = { "stylua" },
			-- python = { "isort", "black" },
			javascript = { { "prettierd", "prettier" } },
			php = { "blade-formatter", { "php_cs_fixer", "phpcbf" } },
			html = { "htmlbeautifier" },
		},
		-- Se activa el modo de formateado al guardar
		format_on_save = { timeout_ms = 500, lsp_fallback = true },
		-- Configuracion personalizada para los formateadores
		formatters = {
			shfmt = {
				prepend_args = { "-i", "2" },
			},
		},
	},
	init = function()
		-- If you want the formatexpr, here is the place to set it
		vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
	end,
}
