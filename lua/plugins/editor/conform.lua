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
