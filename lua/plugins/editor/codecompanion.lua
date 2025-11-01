return {
    "olimorris/codecompanion.nvim",
    opts = {
        adapters = {
            http = {
                mistral = function()
                    return require("codecompanion.adapters").extend("mistral", {
                        url = "${url}/v1/chat/completions",
                        env = {
                            url = "https://codestral.mistral.ai",
                        },
                        schema = {
                            model = {
                                default = "codestral-latest",
                            },
                        },
                    })
                end,
                gemini = function()
                    return require("codecompanion.adapters").extend("gemini", {
                        schema = {
                            model = {
                                default = "gemini-2.5-pro",
                            },
                        },
                    })
                end,
            },
        },
        strategies = {
            chat = {
                adapter = "mistral",
            },
            inline = {
                adapter = "gemini",
            },
            cmd = {
                adapter = "gemini",
            },
        },
    },
    dependencies = {
        "nvim-lua/plenary.nvim",
        {
            "HakonHarnes/img-clip.nvim",
            opts = {
                filetypes = {
                    codecompanion = {
                        prompt_for_file_name = false,
                        template = "[Image]($FILE_PATH)",
                        use_absolute_path = true,
                    },
                },
            },
        },
    },
}
