-- [[ ---------------------------------------------------- ]]
-- ||                       Conform                        ||
-- [[ ---------------------------------------------------- ]]
-- ||                                                      ||
-- || This is a plugin for formatting your code depending  ||
-- || on the file type and formatter.                      ||
-- [[ ---------------------------------------------------- ]]
return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            lua = {
                "stylua",
            },
            python = {
                "ruff_format",
                "ruff",
            },
            php = {
                "easy-coding-standard",
            },
            javascript = {
                "prettierd",
                "prettier",
            },
            typescript = {
                "prettierd",
                "prettier",
            },
            ruby = {
                "rubocop",
            },
            c = {
                "clang_format",
            },
            cpp = {
                "clang_format",
            },
            go = {
                "gofumpt",
            },
            java = {
                "google_java_format",
            },
            toml = {
                "taplo",
            },
        },
        formatters = {
            ["easy-coding-standard"] = {
                command = "ecs",
                args = { "check", "--fix", "--clear-cache", "$FILENAME" },
                timeout_ms = 10000,
            },
        },
        default_format_opts = {
            lsp_format = "fallback",
        },
        format_on_save = {
            lsp_format = "fallback",
            timeout_ms = 500,
        },
        format_after_save = {
            lsp_format = "fallback",
        },
        notify_on_error = true,
        notify_no_formatters = true,
    },
}
