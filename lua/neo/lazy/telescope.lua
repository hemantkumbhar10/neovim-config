return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim", "piersolenski/telescope-import.nvim" },
    event = "VeryLazy",
    config = function()
        require('telescope').setup({})
        require("telescope").load_extension("import")
        local map = vim.api.nvim_set_keymap
        map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
        map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Live grep" })
        map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "List buffers" })
        map("n", "<leader>fi", "<cmd>Telescope import<cr>", { desc = "Import file" })
        map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Help tags" })
        map("n", "<leader>ft", "<cmd>Telescope treesitter<cr>", { desc = "Treesitter" })
        map("n", "<leader>fm", "<cmd>Telescope marks<cr>", { desc = "Marks (last visited position in recent files)" })
        map("n", "<leader>fo", "<cmd>Telescope vim_options<cr>", { desc = "Vim options" })
        map("n", "<leader>fk", "<cmd>Telescope keymaps<cr>", { desc = "Keymaps" })
        map("n", "<leader>fa", "<cmd>Telescope autocommands<cr>", { desc = "Autocommands" })
        map("n", "<leader>fr", "<cmd>Telescope registers<cr>", { desc = "Registers (References in grep view)" })
        map("n", "<leader>fl", "<cmd>Telescope loclist<cr>", { desc = "Location list" })
        map("n", "<leader>fq", "<cmd>Telescope quickfix<cr>", { desc = "Quickfix list" })
        map("n", "<leader>fd", "<cmd>Telescope lsp_document_diagnostics<cr>", { desc = "LSP document diagnostics" })
        map("n", "<leader>ww", "<cmd>Telescope diagnostics<cr>", { desc = "LSP workspace diagnostics" })
        map("n", "<leader>fe", "<cmd>Telescope lsp_document_diagnostics<cr>", { desc = "LSP document diagnostics" })
        map("n", "<leader>fr", "<cmd>Telescope lsp_references<cr>", { desc = "LSP references" })
        map("n", "<leader>fd", "<cmd>Telescope lsp_definitions<cr>", { desc = "LSP definitions" })
        -- map("n", "<leader>fi", "<cmd>Telescope lsp_implementations<cr>", { desc = "LSP implementations" })
        map("n", "<leader>ft", "<cmd>Telescope lsp_type_definitions<cr>", { desc = "LSP type definitions" })
        map("n", "<leader>fs", "<cmd>Telescope lsp_document_symbols<cr>", { desc = "LSP document symbols" })
        map("n", "<leader>fw", "<cmd>Telescope lsp_workspace_symbols<cr>", { desc = "LSP workspace symbols" })
        map("n", "<leader>fc", "<cmd>Telescope colorscheme<cr>", { desc = "Colorscheme" })
        map("n", "<leader>fp", "<cmd>Telescope projects<cr>", { desc = "Projects" })
        map("n", "<leader>fn", "<cmd>Telescope neoclip<cr>", { desc = "Neoclip" })
    end,
    opts = {
        pickers = {
            buffers = {
                show_all_buffers = true,
                sort_lastused = true,
                theme = "dropdown",
                previewer = false,
                mappings = {
                    i = {
                        ["<c-d>"] = "delete_buffer",
                    },
                },
            },
            find_files = {
                theme = "dropdown",
            },
        },
        extensions = {
            import = {
                -- Add imports to the top of the file keeping the cursor in place
                insert_at_top = true,
                -- Support additional languages
                custom_languages = {
                    {
                        -- The regex pattern for the import statement
                        regex = [[^(?:import(?:[\"'\s]*([\w*{}\n, ]+)from\s*)?[\"'\s](.*?)[\"'\s].*)]],
                        -- The Vim filetypes
                        filetypes = { "typescript", "typescriptreact", "javascript", "react" },
                        -- The filetypes that ripgrep supports (find these via `rg --type-list`)
                        extensions = { "js", "ts", "tsx", "jsx" },
                    },
                },
            },
        },
    }
}
