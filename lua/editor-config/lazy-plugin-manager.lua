local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
	spec = {
		{ import = "plugins.coding" },
		{ import = "plugins.colorschemes" },
		{ import = "plugins.completion" },
		{ import = "plugins.editor" },
		{ import = "plugins.lsp" },
		{ import = "plugins.treesitter" },
	},
})
