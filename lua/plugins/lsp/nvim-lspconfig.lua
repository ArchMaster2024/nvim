return {
	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require("lspconfig")
		local configs = require("lspconfig.configs")
		lspconfig.tsserver.setup({})
		lspconfig.phpactor.setup({
			on_attach = on_attach,
			init_options = {
				["language_server_phpstan.enabled"] = false,
				["language_server_psalm.enabled"] = false,
			},
		})
		lspconfig.lua_ls.setup({})
		lspconfig.pylsp.setup({
			settings = {
				pylsp = {
					-- Configuracion para python
				},
			},
		})
		if not configs.blade then
			configs.blade = {
				default_config = {
					name = "blade",
					cmd = { vim.fn.expand("$HOME/laravel-dev-tools/laravel-dev-tools"), "lsp" },
					filetypes = { "blade" },
					root_dir = function(pattern)
						local util = require("lspconfig.util")
						local cwd = vim.loop.cwd()
						local root =
							util.root_pattern("composer.json", ".git", ".phpactor.json", ".phpactor.yml")(pattern)

						return util.path.is_descendant(cwd, root) and cwd or root
					end,
					settings = {},
				},
			}
		end
		lspconfig.blade.setup({
			capabilities = capabilities,
		})

		-- Mapping de teclas a nivel global
		vim.keymap.set("n", "<space>e", vim.diagnostic.open_float)
		vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
		vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
		vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist)

		-- Usar LspAttach comando automatico solamente para mapear las siguientes teclas
		-- despues del lenguaje de servidor que se disparo en el buffer (archivo) actual
		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("UserLspConfig", {}),
			callback = function(ev)
				-- Activar el completado que sera lanzado por la combinacion de teclas
				-- <c-x><c-o>
				--vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

				-- Mapeo del buffer (archivo) local
				-- Ver ':help vim.lsp.*' para cualquier tipo de documentacion de las funciones
				local opts = { buffer = ev.buf }
				vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
				vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
				vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
				vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
				vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, opts)
				vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, opts)
				vim.keymap.set("n", "<space>wl", function()
					print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
				end, opts)
				vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, opts)
				vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
				vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts)
				vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
				vim.keymap.set("n", "<space>f", function()
					vim.lsp.buf.format({ async = true })
				end, opts)
			end,
		})
	end,
}
