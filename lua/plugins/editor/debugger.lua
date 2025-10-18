return {
    'mfussenegger/nvim-dap',
    dependencies = {
        'rcarriga/nvim-dap-ui',
        'theHamsta/nvim-dap-virtual-text',
        'nvim-neotest/nvim-nio'
    },
    config = function()
        local dap, dapui = require('dap'), require('dapui')

        -- DAP UI keymapping
        vim.keymap.set('n', '<leader>dt', function()
            dapui.toggle()
        end)
        vim.keymap.set('n', '<leader>de', function()
            dapui.eval()
        end)

        -- DAP UI layaout config
        dapui.setup({
            layouts = {
                {
                    elements = {
                        "scopes",
                        "breakpoints",
                        "stacks",
                        "watches",
                    },
                    size = 80,
                    position = "left",
                },
                {
                    elements = {
                        "repl",
                        "console",
                    },
                    size = 10,
                    position = "bottom",
                }
            }
        })

        -- PHP dap config
        dap.adapters.php = {
            type = 'executable',
            command = 'php-debug-adapter',
        }
        dap.configurations.php = {
            {
                type = 'php',
                request = 'launch',
                name = 'Debugging for PHP',
                port = 9003,
                pathMappings = {
                    ["/var/www"] = "${workspaceFolder}",
                }
            }
        }

        -- DAP keymapping
        vim.keymap.set('n', '<F5>', function() require('dap').continue() end)
        vim.keymap.set('n', '<F10>', function() require('dap').step_over() end)
        vim.keymap.set('n', '<F11>', function() require('dap').step_into() end)
        vim.keymap.set('n', '<F12>', function() require('dap').step_out() end)
        vim.keymap.set('n', '<Leader>b', function() require('dap').toggle_breakpoint() end)
        vim.keymap.set('n', '<Leader>B', function() require('dap').set_breakpoint() end)
        vim.keymap.set('n', '<Leader>dr', function() require('dap').repl.toggle() end)
        vim.keymap.set('n', '<Leader>dl', function() require('dap').run_last() end)
        vim.keymap.set({ 'n', 'v' }, '<Leader>dh', function()
            require('dap.ui.widgets').hover()
        end)
        vim.keymap.set({ 'n', 'v' }, '<Leader>dp', function()
            require('dap.ui.widgets').preview()
        end)
        vim.keymap.set('n', '<Leader>df', function()
            local widgets = require('dap.ui.widgets')
            widgets.centered_float(widgets.frames)
        end)
        vim.keymap.set('n', '<Leader>ds', function()
            local widgets = require('dap.ui.widgets')
            widgets.centered_float(widgets.scopes)
        end)
    end,
}
