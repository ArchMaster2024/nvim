return {
    "mfussenegger/nvim-dap",
    dependencies = {
        {
            "rcarriga/nvim-dap-ui",
            dependencies = {
                "nvim-neotest/nvim-nio"
            },
            opts = {
                layouts = {
                    {
                        elements = {
                            {
                                id = "scopes",
                                size = 0.25
                            },
                            {
                                id = "breakpoints",
                                size = 0.25
                            },
                            {
                                id = "stacks",
                                size = 0.25
                            },
                            {
                                id = "watches",
                                size = 0.25
                            },
                        },
                        position = "left",
                        size = 40
                    },
                    {
                        elements = {
                            {
                                id = "repl",
                                size = 0.5
                            },
                            {
                                id = "console",
                                size = 0.5
                            }
                        },
                        position = "bottom",
                        size = 10
                    }
                }
            },
            keys = {
                {
                    "<Leader>dui",
                    ":lua require('dapui').toggle()<cr>"
                }
            },
            config = function(configs)
                local config = configs.opts
                require("dapui").setup({
                    config
                })
            end
        },
        "theHamsta/nvim-dap-virtual-text"
    },
    opts = {
        adapters = {
            php = {
                type = "executable",
                command = "php-debug-adapter",
            },
            javascript = {
                type = "server",
                host = "localhost",
                port = "${port}",
                executable = {
                    command = "js-debug-adapter"
                }
            },
            lua = {
                type = "executable",
                command = "node",
                args = {
                    os.getenv("HOME") .. "/.local/share/nvim/mason/share/local-lua-debugger-vscode/extension/debugAdapter.js"
                },
                enrich_config = function(config, on_config)
                    if not config["extensionPath"] then
                        local c = vim.deepcopy(config)
                        -- 💀 If this is missing or wrong you'll see
                        -- "module 'lldebugger' not found" errors in the dap-repl when trying to launch a debug session
                        c.extensionPath = os.getenv("HOME") .. "/.local/share/nvim/mason/share/local-lua-debugger-vscode/"
                        on_config(c)
                    else
                        on_config(config)
                    end
                end,
            }
        },
        configurations = {
            php = {
                type = "php",
                request = "launch",
                name = "Xdebug",
                port = 9003,
                pathMappings = {
                    ["/srv/microservice"] = "${workspaceFolder}",
                    ["/srv/monolith"] = "${workspaceFolder}"
                }
            },
            javascript = {
                type = "javascript",
                request = "launch",
                name = "js-debug-adapter",
                program = "${file}",
                cwd = "${workspaceFolder}"
            },
            typescript = {
                type = "javascript",
                request = "launch",
                name = "js-debug-adapter",
                program = "${file}",
                cwd = "${workspaceFolder}"
            },
            lua = {
                {
                    type = "lua",
                    request = "launch",
                    name = "lua-debugger",
                    cwd = "${workspaceFolder}",
                    program = {
                        lua = "lua",
                        file = "${file}"
                    },
                    args = {}
                }
            }
        },
    },
    keys = {
        {
            "<Leader>dtb",
            ":DapToggleBreakpoint<cr>"
        },
        {
            "<Leader>dc",
            ":DapContinue<cr>"
        },
        {
            "<Leader>dso",
            ":DapStepOver<cr>"
        },
        {
            "<Leader>dsi",
            ":DapStepInto<cr>"
        },
    },
    config = function(configs)
        local dap = require('dap')
        local config = configs.opts
        dap.adapters = config.adapters
        dap.configurations = config.configurations
    end
}
