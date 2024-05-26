return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.6",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local builtin = require("telescope.builtin")
		-- File picker's
		vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
		vim.keymap.set("n", "<leader>grs", builtin.grep_string, {})
		vim.keymap.set("n", "<leader>lg", builtin.live_grep, {})
		-- Vim picker's
		vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
		-- Git picker's
		vim.keymap.set("n", "<leader>gc", builtin.git_commits, {})
		vim.keymap.set("n", "<leader>gb", builtin.git_branches, {})
		vim.keymap.set("n", "<leader>gs", builtin.git_status, {})
		vim.keymap.set("n", "<leader>gst", builtin.git_stash, {})
		-- LSP picker's
		vim.keymap.set("n", "<leader>lsf", builtin.lsp_references, {})
		vim.keymap.set("n", "<leader>lss", builtin.lsp_document_symbols, {})
		vim.keymap.set("n", "<leader>lsi", builtin.lsp_implementations, {})
		vim.keymap.set("n", "<leader>lsd", builtin.lsp_definitions, {})
		-- Treesitter picker's
		vim.keymap.set("n", "<leader>ftr", builtin.treesitter, {})
	end,
}
