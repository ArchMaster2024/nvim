return {
    "olimorris/codecompanion.nvim",
    enabled = false,
    opts = {
        strategies = {
            chat = {
                adapter = ""
            },
            inline = {
                adapter = ""
            },
            cmd = {
                adapter = ""
            }
        },
        adapters = {},
        display = {
            action_palette = {
                width = 95,
                height = 10,
                prompt = "Prompt ", -- Prompt used for interactive LLM calls
                provider = "telescope", -- Can be "default", "telescope", "fzf_lua", "mini_pick" or "snacks". If not specified, the plugin will autodetect installed providers.
                opts = {
                  show_default_actions = true, -- Show the default actions in the action palette?
                  show_default_prompt_library = true, -- Show the default prompt library in the action palette?
                }
            }
        }
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
}
