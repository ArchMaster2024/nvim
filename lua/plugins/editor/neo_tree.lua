return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        "nvim-tree/nvim-web-devicons",
    },
    lazy = false,
    opts = {
        popup_border_style = "",
        clipboard = {
            sync = "none"
        },
        enable_git_status = true,
        enable_diagnostics = true,
        open_files_do_not_replace_types = { "terminal", "trouble", "qf" },
        open_files_using_relative_paths = false,
        sort_case_insensitive = false,
        sort_function = nil,
        default_component_configs = {
            container = {
                enable_character_fade = true,
            },
            indent = {
                indent_size = 2,
                padding = 1,
                with_markers = true,
                indent_marker = "│",
                last_indent_marker = "└",
                highlight = "NeoTreeIndentMarker",
                with_expanders = nil,
                expander_collapsed = "",
                expander_expanded = "",
                expander_highlight = "NeoTreeExpander",
            },
            icon = {
                folder_closed = "",
                folder_open = "",
                folder_empty = "󰜌",
                provider = function(icon, node)
                    if node.type == "file" or node.type == "terminal" then
                        local success, web_devicons = pcall(require, "nvim-web-devicons")
                        local name = node.type == "terminal" and "terminal" or node.name
                        if success then
                            local devicon, hl = web_devicons.get_icon(name)
                            icon.text = devicon or icon.text
                            icon.highlight = hl or icon.highlight
                        end
                    end
                end,
                default = "*",
                highlight = "NeoTreeFileIcon",
                use_filtered_colors = true,
            },
            modified = {
                symbol = "[+]",
                highlight = "NeoTreeModified",
            },
            name = {
                trailing_slash = false,
                use_filtered_colors = true,
                use_git_status_colors = true,
                highlight = "NeoTreeFileName",
            },
            git_status = {
                symbols = {
                    added = "",
                    modified = "",
                    deleted = "✖",
                    renamed = "󰁕",
                    untracked = "",
                    ignored = "",
                    unstaged = "󰄱",
                    staged = "",
                    conflict = "",
                },
            },
            file_size = {
                enabled = true,
                width = 12,
                required_width = 64,
            },
            type = {
                enabled = true,
                width = 10,
                required_width = 122,
            },
            last_modified = {
                enabled = true,
                width = 20,
                required_width = 88,
            },
            created = {
                enabled = true,
                width = 20,
                required_width = 110,
            },
            symlink_target = {
                enabled = false,
            },
        },
        commands = {},
        window = {
            position = "left",
            width = 40,
            mapping_options = {
                noremap = true,
                nowait = true,
            }
        },
        nesting_rules = {},
        filesystem = {
            filtered_items = {
                visible = false,
                hide_dotfiles = true,
                hide_gitignored = true,
                hide_ignored = true,
                ignore_files = {
                    ".neotreeignore",
                    ".ignore",
                    -- ".rgignore"
                },
                hide_hidden = true,
                hide_by_name = {
                    --"node_modules"
                },
                hide_by_pattern = {
                    --"*.meta",
                    --"*/src/*/tsconfig.json",
                },
                always_show = {
                    --".gitignored",
                },
                always_show_by_pattern = {
                    --".env*",
                },
                never_show = {
                    --".DS_Store",
                    --"thumbs.db"
                },
                never_show_by_pattern = {
                    --".null-ls_*",
                },
            },
            follow_current_file = {
                enabled = false,
                leave_dirs_open = false,
            },
            group_empty_dirs = false,
            hijack_netrw_behavior = "open_default",
            -- "open_current",
            -- "disabled",
            use_libuv_file_watcher = false,
        },
        buffers = {
            follow_current_file = {
                enabled = true,
                leave_dirs_open = false,
            },
            group_empty_dirs = true,
            show_unloaded = true,
            window = {
                position = "float"
            }
        },
        git_status = {
            window = {
                position = "float"
            }
        },
        event_handlers = {
            {
                event = "file_opened",
                handler = function(file_path)
                    require("neo-tree.command").execute({ action = "close" })
                end
            }
        }
    },
    keys = {
        {
            "<Leader>nt",
            ":Neotree toggle<cr>",
        },
        {
            "<Leader>ntg",
            ":Neotree git_status toggle<cr>"
        },
        {
            "<Leader>ntb",
            ":Neotree buffers toggle<cr>"
        }
    }
}
