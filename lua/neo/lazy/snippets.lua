return {
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!).
    build = "make install_jsregexp",

    dependencies = { "rafamadriz/friendly-snippets" },

    config = function()
        local ls = require("luasnip")
        ls.filetype_extend("javascript", { "jsdoc" })
        ls.filetype_extend("javascript", { "javascriptreact" })
        ls.filetype_extend("javascript", { "html" })
        ls.filetype_extend("javascript", { "typescript", "typescriptreact" })
        --- TODO: What is expand?
        vim.keymap.set({ "i" }, "<C-l>e", function() ls.expand() end, { silent = true },{desc="Expand snippet"})

        vim.keymap.set({ "i", "s" }, "<C-l;", function() ls.jump(1) end, { silent = true } ,{desc="Jump to next snippet"} )
        vim.keymap.set({ "i", "s" }, "<C-l>,", function() ls.jump(-1) end, { silent = true },{desc="Jumpt to previous snippet"})

        vim.keymap.set({ "i", "s" }, "<C-E>", function()
            if ls.choice_active() then
                ls.change_choice(1)
            end
        end, { silent = true })
    end,
}
