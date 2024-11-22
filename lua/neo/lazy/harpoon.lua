return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
dependencies = { "nvim-lua/plenary.nvim" },

    config = function()
local harpoon = require('harpoon')
    harpoon:setup({
      settings = {
        save_on_toggle = true,
      },
    })
            vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, {desc = "Add file to revisit later"})
            vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, {desc = "Revisited files"})

            vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end, {desc = "Select first harpoon file"})
            vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end, {desc = "Select second harpoon file"})
            vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end, {desc = "Select third harpoon file"})
            vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end, {desc = "Select third harpoon file"})
        end

}
