return {
	"booperlv/nvim-gomove",
	config = function()
		-- INFO: Basic config for gomove plugin
		require("gomove").setup({
			map_default = false, -- INFO: Disabling default mapping for remap all key combination
			reindent = true,
			undojoin = true,
			move_past_end_col = false,
        })
		local map = vim.api.nvim_set_keymap

		-- INFO: Go Normal Smart Move
		map("n", "<S-h>", "<Plug>GoNSMLeft", {})
		map("n", "<S-j>", "<Plug>GoNSMDown", {})
		map("n", "<S-k>", "<Plug>GoNSMUp", {})
        map("n", "<S-l>", "<Plug>GoNSMRight", {})

		-- INFO: Go Visual Smart Move
		map("x", "<S-h>", "<Plug>GoVSMLeft", {})
		map("x", "<S-j>", "<Plug>GoVSMDown", {})
		map("x", "<S-k>", "<Plug>GoVSMUp", {})
		map("x", "<S-l>", "<Plug>GoVSMRight", {})

		-- INFO: Go Normal Smart Duplicate
		map("n", "<D-S-h>", "<Plug>GoNSDLeft", {})
		map("n", "<D-S-j>", "<Plug>GoNSDDown", {})
		map("n", "<D-S-k>", "<Plug>GoNSDUp", {})
		map("n", "<D-S-l>", "<Plug>GoNSDRight", {})

		-- INFO: Go Visual Smart Duplicate
		map("x", "<D-S-h>", "<Plug>GoVSDLeft", {})
		map("x", "<D-S-j>", "<Plug>GoVSDDown", {})
		map("x", "<D-S-k>", "<Plug>GoVSDUp", {})
		map("x", "<D-S-l>", "<Plug>GoVSDRight", {})
	end,
}
