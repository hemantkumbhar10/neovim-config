return {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = function()
        require("nvim-autopairs").setup({
            check_ts = true, -- enable Treesitter-based detection
            ts_config = {
                lua = { "string", "source" },
                javascript = { "string", "template_string" },
                java = false,
            },
            disable_filetype = { "TelescopePrompt", "spectre_panel" },
            fast_wrap = {
                map = "<leader><CR>",
                chars = { "{", "[", "(", '"', "'" },
                offset = 0,                          -- adjust this offset to your needs
                end_key = "$",                       -- adjust this key to your needs
                keys = "qwertyuiopzxcvbnmasdfghjkl", -- adjust this keymap to your needs
                check_comma = true,                  -- enable comma-based detection
                highlight = "PmenuSel",              -- adjust this highlight group to your needs
                highlight_grey = "LineNr",           -- adjust this highlight group to your needs
            },
        })
    end
}
