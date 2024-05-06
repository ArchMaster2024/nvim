local plugins = {
    -- ############# Colorschemes ############### --
    {
        'projekt0n/github-nvim-theme',
        lazy = false,
        priority = 1000,
        enabled = false,
        config = function()
            require('github-theme').setup({
                dim_inactive = false,
                terminal_colors = true,
                module_default = true,
            })

            vim.cmd('colorscheme github_dark_high_contrast')
        end,
    },
    {
        'navarasu/onedark.nvim',
        lazy = false,
        enabled = false,
        config = function()
            require('onedark').setup({
                style = 'deep',
                term_colors = true,
            })

            require('onedark').load()
        end,
    },
    {
        'rebelot/kanagawa.nvim',
        lazy = false,
        enabled = false,
        config = function()
            require('kanagawa').setup({
                terminalColors = true,
                theme = "dragon",
                statementStyle = {
                    bold = true
                },
            })

            require('kanagawa').load()
        end,
    },
    {
        'tiagovla/tokyodark.nvim',
        lazy = false,
        enabled = true,
        config = function()
            require('tokyodark').setup({
                transparent_background = false,
                terminal_colors = true,
            })

            vim.cmd [[colorscheme tokyodark]]
        end,
    },
    {
        'bluz71/vim-moonfly-colors',
        name = "moonfly",
        enabled = false,
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd [[colorscheme moonfly]]
        end,
    },
    -- ############ Plugins ############# --
    -- Editor
    {
        'nvim-pack/nvim-spectre',
        dependencies = {
            'nvim-pack/plenary.nvim'
        },
        config = function()
            vim.keymap.set('n', '<leader>S', '<cmd>lua require("spectre").toggle()<CR>', {
                desc = "Toggle Spectre"
            })
            vim.keymap.set('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
                desc = "Search current word"
            })
            vim.keymap.set('v', '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', {
                desc = "Search current word"
            })
            vim.keymap.set('n', '<leader>sp', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
                desc = "Search on current file"
            })
        end
    },
    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end)
            vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end)
            vim.keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end)
            vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
            vim.keymap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end)
            vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end)
        end
    },
    {
        'nvim-treesitter/nvim-treesitter',
        build = ":TSUpdate",
        config = function()
            require 'nvim-treesitter.configs'.setup {
                ensure_installed = {
                    'c', 'lua', 'vim', 'vimdoc', 'php', 'javascript', 'typescript', 'css', 'html',
                    'vue', 'scss'
                },
                sync_install = false,
                highlight = {
                    enable = true
                }
            }
        end
    },
    {
        'windwp/nvim-ts-autotag',
        config = function()
            require 'nvim-treesitter.configs'.setup {
                autotag = {
                    enable = true,
                }
            }
        end
    },
    {
        'm4xshen/autoclose.nvim',
        config = function()
            require('autoclose').setup()
        end
    },
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.6',
        dependencies = {
            'nvim-lua/plenary.nvim'
        },
        config = function()
            local builtin = require('telescope.builtin')
            -- File picker's
            vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
            vim.keymap.set('n', '<leader>grs', builtin.grep_string, {})
            vim.keymap.set('n', '<leader>lg', builtin.live_grep, {})
            -- Vim picker's
            vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
            vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
            -- Git picker's
            vim.keymap.set('n', '<leader>gc', builtin.git_commits, {})
            vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})
            vim.keymap.set('n', '<leader>gs', builtin.git_status, {})
            vim.keymap.set('n', '<leader>gst', builtin.git_stash, {})
            -- LSP picker's
            vim.keymap.set('n', '<leader>lsf', builtin.lsp_references, {})
            vim.keymap.set('n', '<leader>lss', builtin.lsp_document_symbols, {})
            vim.keymap.set('n', '<leader>lsi', builtin.lsp_implementations, {})
            vim.keymap.set('n', '<leader>lsd', builtin.lsp_definitions, {})
            -- Treesitter picker's
            vim.keymap.set('n', '<leader>ftr', builtin.treesitter, {})
        end
    },
    {
        'lukas-reineke/indent-blankline.nvim',
        main = 'ibl',
        config = function()
            require('ibl').setup()
        end
    },
    {
        'NvChad/nvim-colorizer.lua',
        config = function()
            require('colorizer').setup({
                filetypes = { "*" },
                user_default_options = {
                    RGB = true,
                    RRGGBB = true,
                    names = true,
                    RRGGBBAA = false,
                    AARRGGBB = false,
                    rgb_fn = false,
                    hsl_fn = false,
                    css = false,
                    css_fn = false,
                    mode = "background",
                    tailwind = false,
                    sass = {
                        enable = false,
                        parsers = {
                            "css"
                        },
                    },
                    always_update = false
                }
            })
        end,
    },
    {
        'nvim-neo-tree/neo-tree.nvim',
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim", -- Conjunto de herramientas para la creacion de plugins en Neovim
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",  -- Conjunto de elementos ui para plugins de Neovim
        },
        keys = {
            {
                "<leader>fe", "<cmd>Neotree filesystem reveal left toggle<cr>", desc = "Neotree"
            },
            {
                "<leader>git", "<cmd>Neotree git_status float toggle<cr>"
            },
            {
                "<leader>net", "<cmd>Neotree buffers current toggle<cr>"
            }
        },
        config = function()
            -- Iconos para los diversos tipos de diagnosticos que muestra el plugin
            vim.fn.sign_define("DiagnosticSignError",
                { text = " ", texthl = "DiagnosticSignError" })
            vim.fn.sign_define("DiagnosticSignWarn",
                { text = " ", texthl = "DiagnosticSignWarn" })
            vim.fn.sign_define("DiagnosticSignInfo",
                { text = " ", texthl = "DiagnosticSignInfo" })
            vim.fn.sign_define("DiagnosticSignHint",
                { text = "󰌵", texthl = "DiagnosticSignHint" })

            require("neo-tree").setup({
                close_if_last_window = false, -- Cerrar Neo-tree si es la ultima ventana a la izquierda en el tab
                popup_border_style = "rounded",
                enable_git_status = true,
                enable_diagnostics = true,
                neo_tree_popup_input_ready = false,                                -- Activar el modo normal para los dialogos de entrada.
                open_files_do_not_replace_types = { "terminal", "trouble", "qf" }, -- when opening files, do not use windows containing these filetypes or buftypes
                sort_case_insensitive = false,                                     -- used when sorting files and directories in the tree
                sort_function = nil,                                               -- use a custom function for sorting files and directories in the tree
                event_handlers = {
                    -- Close neo-tree when opening a file.
                    {
                        event = 'file_opened',
                        handler = function()
                            require('neo-tree').close_all()
                        end,
                    },
                },
                -- sort_function = function (a,b)
                --       if a.type == b.type then
                --           return a.path > b.path
                --       else
                --           return a.type > b.type
                --       end
                --   end , -- this sorts files and directories descendantly
                default_component_configs = {
                    container = {
                        enable_character_fade = true
                    },
                    indent = {
                        indent_size = 2,
                        padding = 1, -- extra padding on left hand side
                        -- indent guides
                        with_markers = true,
                        indent_marker = "│",
                        last_indent_marker = "└",
                        highlight = "NeoTreeIndentMarker",
                        -- expander config, needed for nesting files
                        with_expanders = nil, -- if nil and file nesting is enabled, will enable expanders
                        expander_collapsed = "",
                        expander_expanded = "",
                        expander_highlight = "NeoTreeExpander",
                    },
                    icon = {
                        folder_closed = "",
                        folder_open = "",
                        folder_empty = "󰜌",
                        -- The next two settings are only a fallback, if you use nvim-web-devicons and configure default icons there
                        -- then these will never be used.
                        default = "*",
                        highlight = "NeoTreeFileIcon"
                    },
                    modified = {
                        symbol = "[+]",
                        highlight = "NeoTreeModified",
                    },
                    name = {
                        trailing_slash = false,
                        use_git_status_colors = true,
                        highlight = "NeoTreeFileName",
                    },
                    git_status = {
                        symbols = {
                            -- Change type
                            added     = "✚", -- or "✚", but this is redundant info if you use git_status_colors on the name
                            modified  = "", -- or "", but this is redundant info if you use git_status_colors on the name
                            deleted   = "✖", -- this can only be used in the git_status source
                            renamed   = "󰁕", -- this can only be used in the git_status source
                            -- Status type
                            untracked = "",
                            ignored   = "",
                            unstaged  = "󰄱",
                            staged    = "",
                            conflict  = "",
                        }
                    },
                    -- If you don't want to use these columns, you can set `enabled = false` for each of them individually
                    file_size = {
                        enabled = true,
                        required_width = 64, -- min width of window required to show this column
                    },
                    type = {
                        enabled = true,
                        required_width = 122, -- min width of window required to show this column
                    },
                    last_modified = {
                        enabled = true,
                        required_width = 88, -- min width of window required to show this column
                    },
                    created = {
                        enabled = true,
                        required_width = 110, -- min width of window required to show this column
                    },
                    symlink_target = {
                        enabled = false,
                    },
                },
                -- A list of functions, each representing a global custom command
                -- that will be available in all sources (if not overridden in `opts[source_name].commands`)
                -- see `:h neo-tree-custom-commands-global`
                commands = {},
                window = {
                    position = "left",
                    width = 40,
                    mapping_options = {
                        noremap = true,
                        nowait = true,
                    },
                    mappings = {
                        ["<space>"] = {
                            "toggle_node",
                            nowait = false, -- disable `nowait` if you have existing combos starting with this char that you want to use
                        },
                        ["<2-LeftMouse>"] = "open",
                        ["<cr>"] = "open",
                        ["<esc>"] = "cancel", -- close preview or floating neo-tree window
                        ["P"] = { "toggle_preview", config = { use_float = true, use_image_nvim = true } },
                        -- Read `# Preview Mode` for more information
                        ["l"] = "focus_preview",
                        ["S"] = "open_split",
                        ["s"] = "open_vsplit",
                        -- ["S"] = "split_with_window_picker",
                        -- ["s"] = "vsplit_with_window_picker",
                        ["t"] = "open_tabnew",
                        -- ["<cr>"] = "open_drop",
                        -- ["t"] = "open_tab_drop",
                        ["w"] = "open_with_window_picker",
                        --["P"] = "toggle_preview", -- enter preview mode, which shows the current node without focusing
                        ["C"] = "close_node",
                        -- ['C'] = 'close_all_subnodes',
                        ["z"] = "close_all_nodes",
                        --["Z"] = "expand_all_nodes",
                        ["a"] = {
                            "add",
                            -- this command supports BASH style brace expansion ("x{a,b,c}" -> xa,xb,xc). see `:h neo-tree-file-actions` for details
                            -- some commands may take optional config options, see `:h neo-tree-mappings` for details
                            config = {
                                show_path = "none" -- "none", "relative", "absolute"
                            }
                        },
                        ["A"] = "add_directory", -- also accepts the optional config.show_path option like "add". this also supports BASH style brace expansion.
                        ["d"] = "delete",
                        ["r"] = "rename",
                        ["y"] = "copy_to_clipboard",
                        ["x"] = "cut_to_clipboard",
                        ["p"] = "paste_from_clipboard",
                        ["c"] = "copy", -- takes text input for destination, also accepts the optional config.show_path option like "add":
                        -- ["c"] = {
                        --  "copy",
                        --  config = {
                        --    show_path = "none" -- "none", "relative", "absolute"
                        --  }
                        --}
                        ["m"] = "move", -- takes text input for destination, also accepts the optional config.show_path option like "add".
                        ["q"] = "close_window",
                        ["R"] = "refresh",
                        ["?"] = "show_help",
                        ["<"] = "prev_source",
                        [">"] = "next_source",
                        ["i"] = "show_file_details",
                    }
                },
                nesting_rules = {},
                filesystem = {
                    filtered_items = {
                        visible = false, -- when true, they will just be displayed differently than normal items
                        hide_dotfiles = true,
                        hide_gitignored = true,
                        hide_hidden = true, -- only works on Windows for hidden files/directories
                        hide_by_name = {
                            --"node_modules"
                        },
                        hide_by_pattern = { -- uses glob style patterns
                            --"*.meta",
                            --"*/src/*/tsconfig.json",
                        },
                        always_show = { -- remains visible even if other settings would normally hide it
                            --".gitignored",
                        },
                        never_show = { -- remains hidden even if visible is toggled to true, this overrides always_show
                            --".DS_Store",
                            --"thumbs.db"
                        },
                        never_show_by_pattern = { -- uses glob style patterns
                            --".null-ls_*",
                        },
                    },
                    follow_current_file = {
                        enabled = false,                    -- This will find and focus the file in the active buffer every time
                        --               -- the current file is changed while the tree is open.
                        leave_dirs_open = false,            -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
                    },
                    group_empty_dirs = false,               -- when true, empty folders will be grouped together
                    hijack_netrw_behavior = "open_default", -- netrw disabled, opening a directory opens neo-tree
                    -- in whatever position is specified in window.position
                    -- "open_current",  -- netrw disabled, opening a directory opens within the
                    -- window like netrw would, regardless of window.position
                    -- "disabled",    -- netrw left alone, neo-tree does not handle opening dirs
                    use_libuv_file_watcher = false, -- This will use the OS level file watchers to detect changes
                    -- instead of relying on nvim autocmd events.
                    window = {
                        mappings = {
                            ["<bs>"] = "navigate_up",
                            ["."] = "set_root",
                            ["H"] = "toggle_hidden",
                            ["/"] = "fuzzy_finder",
                            ["D"] = "fuzzy_finder_directory",
                            ["#"] = "fuzzy_sorter", -- fuzzy sorting using the fzy algorithm
                            -- ["D"] = "fuzzy_sorter_directory",
                            ["f"] = "filter_on_submit",
                            ["<c-x>"] = "clear_filter",
                            ["[g"] = "prev_git_modified",
                            ["]g"] = "next_git_modified",
                            ["o"] = { "show_help", nowait = false, config = { title = "Order by", prefix_key = "o" } },
                            ["oc"] = { "order_by_created", nowait = false },
                            ["od"] = { "order_by_diagnostics", nowait = false },
                            ["og"] = { "order_by_git_status", nowait = false },
                            ["om"] = { "order_by_modified", nowait = false },
                            ["on"] = { "order_by_name", nowait = false },
                            ["os"] = { "order_by_size", nowait = false },
                            ["ot"] = { "order_by_type", nowait = false },
                            -- ['<key>'] = function(state) ... end,
                        },
                        fuzzy_finder_mappings = { -- define keymaps for filter popup window in fuzzy_finder_mode
                            ["<down>"] = "move_cursor_down",
                            ["<C-n>"] = "move_cursor_down",
                            ["<up>"] = "move_cursor_up",
                            ["<C-p>"] = "move_cursor_up",
                            -- ['<key>'] = function(state, scroll_padding) ... end,
                        },
                    },

                    commands = {} -- Add a custom command or override a global one using the same function name
                },
                buffers = {
                    follow_current_file = {
                        enabled = true,          -- This will find and focus the file in the active buffer every time
                        --              -- the current file is changed while the tree is open.
                        leave_dirs_open = false, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
                    },
                    group_empty_dirs = true,     -- when true, empty folders will be grouped together
                    show_unloaded = true,
                    window = {
                        mappings = {
                            ["bd"] = "buffer_delete",
                            ["<bs>"] = "navigate_up",
                            ["."] = "set_root",
                            ["o"] = { "show_help", nowait = false, config = { title = "Order by", prefix_key = "o" } },
                            ["oc"] = { "order_by_created", nowait = false },
                            ["od"] = { "order_by_diagnostics", nowait = false },
                            ["om"] = { "order_by_modified", nowait = false },
                            ["on"] = { "order_by_name", nowait = false },
                            ["os"] = { "order_by_size", nowait = false },
                            ["ot"] = { "order_by_type", nowait = false },
                        }
                    },
                },
                git_status = {
                    window = {
                        position = "float",
                        mappings = {
                            ["A"]  = "git_add_all",
                            ["gu"] = "git_unstage_file",
                            ["ga"] = "git_add_file",
                            ["gr"] = "git_revert_file",
                            ["gc"] = "git_commit",
                            ["gp"] = "git_push",
                            ["gg"] = "git_commit_and_push",
                            ["o"]  = { "show_help", nowait = false, config = { title = "Order by", prefix_key = "o" } },
                            ["oc"] = { "order_by_created", nowait = false },
                            ["od"] = { "order_by_diagnostics", nowait = false },
                            ["om"] = { "order_by_modified", nowait = false },
                            ["on"] = { "order_by_name", nowait = false },
                            ["os"] = { "order_by_size", nowait = false },
                            ["ot"] = { "order_by_type", nowait = false },
                        }
                    }
                }
            })

            vim.cmd([[nnoremap \ :Neotree reveal<cr>]])
        end,
    },
    {
        'goolord/alpha-nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require 'alpha'.setup(require 'alpha.themes.startify'.config)
        end
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('lualine').setup()
        end
    },
    -- Coding
    {
        'numToStr/Comment.nvim',
        lazy = false,
        config = function()
            require('Comment').setup()
        end,
    },
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {
        },
    },
    {
        'stevearc/conform.nvim',
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
                python = { "isort", "black" },
                javascript = { { "prettierd", "prettier" } },
                php = { "blade-formatter", { "php_cs_fixer", "phpcbf", "phpinsights" } }
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
    },
    {
        'L3MON4D3/LuaSnip',
        tag = 'v2.2.0',
        build = 'make install_jsregexp',
        dependencies = { "rafamadriz/friendly-snippets" },
        config = function()
            local ls = require('luasnip')
            -- Cargando los snippets estilo visual studio code
            require("luasnip.loaders.from_vscode").lazy_load()
            -- Cargando snippets para laravel
            require 'luasnip'.filetype_extend("php", {
                'blade',
                'helpers',
                'livewire',
                'snippets'
            })
            require 'luasnip'.filetype_extend("javascript", {
                'html',
                'nuxt-html',
                'nuxt-script',
                'script',
                'style',
                'vue'
            })
            require 'luasnip'.filetype_extend("typescript", {
                'html',
                'nuxt-html',
                'nuxt-script',
                'script',
                'style',
                'vue'
            })
            vim.keymap.set({ "i" }, "<C-K>", function() ls.expand() end, { silent = true })
            vim.keymap.set({ "i", "s" }, "<C-L>", function() ls.jump(1) end, { silent = true })
            vim.keymap.set({ "i", "s" }, "<C-J>", function() ls.jump(-1) end, { silent = true })

            vim.keymap.set({ "i", "s" }, "<C-E>", function()
                if ls.choice_active() then
                    ls.change_choice(1)
                end
            end, { silent = true })
        end
    },
    'saadparwaiz1/cmp_luasnip',
    --[[ {
        'lewis6691/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    }, ]]
    -- LSP
    {
        'neovim/nvim-lspconfig',
        config = function()
            local lspconfig = require('lspconfig')
            lspconfig.tsserver.setup {}
            lspconfig.phpactor.setup {
                on_attach = on_attach,
                init_options = {
                    ["language_server_phpstan.enabled"] = false,
                    ["language_server_psalm.enabled"] = false,
                }
            }
            lspconfig.lua_ls.setup {}
            lspconfig.pylsp.setup {
                settings = {
                    pylsp = {
                        -- Configuracion para python
                    }
                }
            }

            -- Mapping de teclas a nivel global
            vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
            vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
            vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
            vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

            -- Usar LspAttach comando automatico solamente para mapear las siguientes teclas
            -- despues del lenguaje de servidor que se disparo en el buffer (archivo) actual
            vim.api.nvim_create_autocmd('LspAttach', {
                group = vim.api.nvim_create_augroup('UserLspConfig', {}),
                callback = function(ev)
                    -- Activar el completado que sera lanzado por la combinacion de teclas
                    -- <c-x><c-o>
                    --vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

                    -- Mapeo del buffer (archivo) local
                    -- Ver ':help vim.lsp.*' para cualquier tipo de documentacion de las funciones
                    local opts = { buffer = ev.buf }
                    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
                    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
                    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
                    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
                    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
                    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
                    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
                    vim.keymap.set('n', '<space>wl', function()
                        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
                    end, opts)
                    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
                    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
                    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
                    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
                    vim.keymap.set('n', '<space>f', function()
                        vim.lsp.buf.format { async = true }
                    end, opts)
                end,
            })
        end,
    },
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    {
        'hrsh7th/nvim-cmp',
        config = function()
            local cmp = require('cmp')
            cmp.setup({
                snippet = {
                    expand = function(args)
                        require('luasnip').lsp_expand(args.body)
                    end,
                },
                window = {
                    --
                },
                mapping = cmp.mapping.preset.insert({
                    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                    ['<C-f>'] = cmp.mapping.scroll_docs(4),
                    ['<C-Space>'] = cmp.mapping.complete(),
                    ['<C-e>'] = cmp.mapping.abort(),
                    ['<CR>'] = cmp.mapping.confirm({ select = true }),
                }),
                sources = cmp.config.sources({
                    { name = 'nvim_lsp' },
                    { name = 'luasnip' },
                    {
                        { name = 'buffer' },
                    }
                })
            })

            cmp.setup.filetype('gitcommit', {
                sources = cmp.config.sources({
                    { name = 'git' },
                }, {
                    { name = 'buffer' },
                })
            })

            cmp.setup.cmdline({ '/', '?' }, {
                mapping = cmp.mapping.preset.cmdline(),
                sources = {
                    { name = 'buffer' }
                }
            })

            cmp.setup.cmdline(':', {
                mapping = cmp.mapping.preset.cmdline(),
                sources = cmp.config.sources({
                    { name = 'path' },
                }, {
                    { name = 'cmdline' }
                }),
                matching = { disallow_symbol_nonprefix_matching = false }
            })

            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            require('lspconfig')['tsserver'].setup {
                capabilities = capabilities
            }
            require('lspconfig')['phpactor'].setup {
                capabilities = capabilities
            }
            require('lspconfig')['lua_ls'].setup {
                capabilities = capabilities
            }
            require('lspconfig')['pylsp'].setup {
                capabilities = capabilities
            }
        end
    }
}

require("lazy").setup(plugins)
