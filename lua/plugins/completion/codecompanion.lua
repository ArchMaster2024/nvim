return {
    "olimorris/codecompanion.nvim",
    enabled = true,
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
    },
    opts = {
        strategies = {
            chat = {
                adapter = "gemini"
            },
            inline = {
                adapter = "gemini"
            },
            cmd = {
                adapter = "gemini"
            }
        },
        adapters = {
            http = {
                mistral = function()
                    return require("codecompanion.adapters").extend("mistral", {
                        url = "${url}/v1/chat/completions",
                        env = {
                            url = "https://codestral.mistral.ai",
                            api_key = "u9JliFhmQNoYxzpsEH7g9YqgBJnRDpJ6",
                        },
                        schema = {
                            model = {
                                order = 1,
                                mapping = "parameters",
                                type = "enum",
                                desc =
                                "ID of the model to use. See the model endpoint compatibility table for details on which models work with the Chat API.",
                                default = "codestral-2501"
                            }
                        }
                    })
                end,
                gemini = function()
                    return require("codecompanion.adapters").extend("gemini", {
                        url =
                        "https://generativelanguage.googleapis.com/v1beta/openai/chat/completions",
                        env = {
                            api_key = "GEMINI_API_KEY",
                        },
                        schema = {
                            model = {
                                order = 1,
                                mapping = "parameters",
                                type = "enum",
                                desc =
                                "The model that will complete your prompt. See https://ai.google.dev/gemini-api/docs/models/gemini#model-variations for additional details and options.",
                                default = "gemini-2.5-pro"
                            }
                        },
                        reasoning_effort = {
                            order = 2,
                            mapping = "parameters",
                            type = "string",
                            optional = true,
                            default = "medium"
                        }
                    })
                end
            }
        },
        display = {
            action_palette = {
                width = 95,
                height = 10,
                prompt = "Prompt ",                     -- Prompt used for interactive LLM calls
                provider = "telescope",                 -- Can be "default", "telescope", "fzf_lua", "mini_pick" or "snacks". If not specified, the plugin will autodetect installed providers.
                opts = {
                    show_default_actions = true,        -- Show the default actions in the action palette?
                    show_default_prompt_library = true, -- Show the default prompt library in the action palette?
                }
            }
        },
    },
}
