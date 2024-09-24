return {
	{
		"rcarriga/nvim-dap-ui",
		dependencies = {
			"mfussenegger/nvim-dap",
			"nvim-neotest/nvim-nio",
		},
		config = function()
			local dap, dapui = require("dap"), require("dapui")
			dap.adapters.php = {
				type = "executable",
				command = "node",
				args = { os.getenv("HOME") .. "/.local/share/nvim/mason/bin/php-debug-adapter" },
			}
			dap.configurations.php = {
				{
					name = "run current script",
					type = "php",
					request = "launch",
					port = 9003,
					cwd = "${fileDirname}",
					program = "${file}",
					runtimeExecutable = "php",
				},
				{
					type = "php",
					request = "launch",
					name = "Listen for Xdebug",
					port = 9003,
				},
				{
					name = "listen for Xdebug docker",
					type = "php",
					request = "launch",
					port = 9003,
					-- this is where your file is in the container
					pathMappings = {
						["/opt/project"] = "${workspaceFolder}",
					},
				},
			}
			vim.keymap.set("n", "<F5>", function()
				dap.continue()
			end)
			vim.keymap.set("n", "<F10>", function()
				dap.step_over()
			end)
			vim.keymap.set("n", "<F11>", function()
				dap.step_into()
			end)
			vim.keymap.set("n", "<leader>b", function()
				dap.toggle_breakpoint()
			end)
			vim.keymap.set("n", "<leader>B", function()
				dap.set_breakpoint()
			end)
			vim.keymap.set("n", "<Leader>lp", function()
				require("dap").set_breakpoint(nil, nil, vim.fn.input("Log point message: "))
			end)
			vim.keymap.set("n", "<leader>dr", function()
				dap.repl.open()
			end)
			vim.keymap.set("n", "<leader>dl", function()
				dap.run_last()
			end)
			dapui.setup()
		end,
	},
}
