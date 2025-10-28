return {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    build = ":TSUpdate",
    opts = {
        ensure_installed = {
            "c",
            "lua",
            "vim",
            "vimdoc",
            "query",
            "markdown",
            "markdown_inline",
            "bash",
            "blade",
            "comment",
            "css",
            "dockerfile",
            "dot",
            "doxygen",
            "editorconfig",
            "git_config",
            "git_rebase",
            "gitattributes",
            "gitcommit",
            "gitignore",
            "html",
            "java",
            "javadoc",
            "javascript",
            "jsdoc",
            "json",
            "luadoc",
            "nginx",
            "php",
            "phpdoc",
            "python",
            "regex",
            "scss",
            "sql",
            "ssh_config",
            "terraform",
            "tmux",
            "toml",
            "tsx",
            "typescript",
            "typespec",
            "vue",
            "xml",
            "yaml"
        },
        sync_install = false,
        auto_install = true,
        highlight = {
            enable = true
        },
        indent = {
            enable = true
        }
    },
    config = function(configs)
        local config = configs.opts
        local nvim_treesitter_config = require('nvim-treesitter.configs')
        nvim_treesitter_config.setup(config)
    end
}
