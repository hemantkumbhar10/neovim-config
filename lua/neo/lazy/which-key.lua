return {
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = {
            setup = {},
            register = function()
                local wk = require("which-key")
                wk.register({
                    ["<C>"] = { name = "+mappings" },
                    ["<C-e>"] = { "Revisited files" },
                    ["<C-h>"] = { "Select first harpoon file" },
                    ["<C-n>"] = { "Select third harpoon file" },
                    ["<C-s>"] = { "Select fourth harpoon file" },
                    ["<C-t>"] = { "Select second harpoon file" },
                }, { mode = "n" }) -- specify the mode, e.g., normal mode
            end,
        },
        keys = {
            {
                "<leader>?",
                function()
                    require("which-key").show({ global = false })
                end,
                desc = "Buffer Local Keymaps (which-key)",
            },
            {
                "<C>",
                function()
                    require("which-key").show({ global = false })
                end,
                desc = "+mappings",
            },
        },
    }
}

