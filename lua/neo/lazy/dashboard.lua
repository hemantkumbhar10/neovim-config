local functions = {}

local quotes = { {
    "Cook something..",
    "",
    ""
}, { "Dont be dumb", "", "" }, { "Lets fucking go!", "", "" } }

---Returns a random programming quote
---@return table: Lines of text for the quote
function functions.quote()
    math.randomseed(os.clock())
    local index = math.random() * #quotes
    return quotes[math.floor(index) + 1]
end

return {
    {
        "startup-nvim/startup.nvim",
        requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
        config = function()
            require "startup".setup(

                {
                    -- every line should be same width without escaped \
                    header = {
                        type = "text",
                        align = "center",
                        fold_section = false,
                        title = "Header",
                        margin = 5,
                        content = {
                            "⣶⣶⣶⡆⠀⠀⣰⣶⣶⣶⠀⠀⣴⣶⣶⣶⡄⠀⠰⣶⣶⡆⣰⣶⣶⠀⣶⣶⣶⠀⣶⣶⣶⣆⠀⠀⢰⣶⣶⣶⠀⣶⣶⡆⢰⣶⣶⡆⢰⣶⣶⣆⠀⠀⢠⣶⣶⣶⡆",
                            "⣿⣿⣿⣷⡀⢰⣿⣿⣿⣿⠀⢠⣿⣿⣿⣿⣧⠀⠀⢹⣿⣷⣿⣿⠏⠀⣿⣿⣿⠀⣿⣿⣿⣿⡆⢰⣿⣿⣿⣿⠀⣿⣿⡇⢸⣿⣿⡇⢸⣿⣿⣿⣆⠀⣾⣿⣿⣿⡇",
                            "⣿⣿⣿⣿⣷⣿⣿⣿⣿⣿⠀⢸⣿⣿⢿⣿⣿⠀⠀⠘⣿⣿⣿⣟⠀⠀⣿⣿⣿⠀⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⠀⣿⣿⡇⢸⣿⣿⡇⢸⣿⣿⣿⣿⣾⣿⣿⣿⣿⡇",
                            "⣿⣿⡟⣿⣿⣿⡿⣿⣿⣿⠀⣾⣿⣿⣼⣿⣿⡆⠀⢸⣿⣿⣿⣿⡀⠀⣿⣿⣿⠀⣿⣿⣿⣿⣿⣿⣿⢻⣿⣿⠀⣿⣿⣇⣸⣿⣿⡇⢸⣿⣿⢻⣿⣿⣿⢿⣿⣿⡇",
                            "⣿⣿⡇⠸⣿⣿⠁⣿⣿⣿⢰⣿⣿⡿⠿⣿⣿⣷⢀⣿⣿⡏⢻⣿⣷⠀⣿⣿⣿⠀⣿⣿⣿⠘⣿⣿⠃⢸⣿⣿⠀⢻⣿⣿⣿⣿⣿⡇⢸⣿⣿⠈⢿⣿⡇⢸⣿⣿⡇",
                            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠈⠀⠈⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                            "    ⣾⣿⣿⣿⣿⡇⢰⣿⣿⣿⣿⣿⠀⣰⣿⣿⣿⣿⣿⠀⣾⣿⣿⣿⣿⣧⠀⣿⣿⣿⣿⣿⣿⣆⢸⣿⣿⣿⣿⣿⣿⣿",
                            "   ⢸⣿⣿⡟⠛⡛⠃⢸⣿⣿⡛⠛⠛⠀⣿⣿⣿⣛⠛⠛⠀⣿⣿⠛⠛⣿⣿⠀⢻⣿⣿⠛⢻⣿⣿⠘⠛⢻⣿⣿⡟⠛⠁",
                            "   ⢸⣿⣿⣿⣿⡇⠀⢸⣿⣿⣿⣿⡇⠀⣿⣿⣿⣿⣿⠀⠀⣿⣿⠀⠀⣿⣿⠀⢸⣿⣿⣶⣾⣿⣿⠀⠀⢸⣿⣿⡇⠀⠀",
                            "   ⢸⣿⣿⣧⣤⣤⡄⢸⣿⣿⠀⠀⠀⠀⣿⣿⣿⠀⠀⠀⠀⣿⣿⣶⣶⣿⣿⠀⢸⣿⣿⠿⣿⣿⡁⠀⠀⢸⣿⣿⡇⠀⠀",
                            "   ⠈⠿⠿⠿⠿⠿⠇⠸⠿⠿⠀⠀⠀⠀⠿⠿⠿⠀⠀⠀⠀⠻⠿⠿⠿⠿⠟⠀⠸⠿⠿⠀⠻⠿⠧⠀⠀⠸⠿⠿⠇⠀⠀",
                            "",
                            "              deadpool said it                             "
                        },
                        highlight = "Statement",
                        default_color = "",
                        oldfiles_amount = 0,
                    },
                    header_2 = {
                        type = "text",
                        oldfiles_directory = false,
                        align = "center",
                        fold_section = false,
                        title = "Quote",
                        margin = 5,
                        content = functions.quote(),
                        highlight = "Constant",
                        default_color = "",
                        oldfiles_amount = 0,
                    },
                    -- name which will be displayed and command
                    body = {
                        type = "mapping",
                        oldfiles_directory = false,
                        align = "center",
                        fold_section = false,
                        title = "Basic Commands",
                        margin = 5,
                        content = {
                            { " Find File", "Telescope find_files", "<leader>ff" },
                            { "󰍉 Find Word", "Telescope live_grep", "<leader>lg" },
                            { " Recent Files", "Telescope oldfiles", "<leader>of" },
                            { " File Browser", "Telescope file_browser", "<leader>fb" },
                            { " Colorschemes", "Telescope colorscheme", "<leader>cs" },
                            { " New File", "lua require'startup'.new_file()", "<leader>nf" },
                        },
                        highlight = "String",
                        default_color = "",
                        oldfiles_amount = 0,
                    },

                    footer = {
                        type = "text",
                        oldfiles_directory = false,
                        align = "center",
                        fold_section = false,
                        title = "Footer",
                        margin = 5,
                        content = { "Whaa kinda bug are you writing today?" },
                        highlight = "Number",
                        default_color = "",
                        oldfiles_amount = 0,
                    },

                    options = {
                        mapping_keys = true,
                        cursor_column = 0.5,
                        empty_lines_between_mappings = true,
                        disable_statuslines = true,
                        paddings = { 1, 3, 3, 0 },
                    },
                    mappings = {
                        execute_command = "<CR>",
                        open_file = "o",
                        open_file_split = "<c-o>",
                        open_section = "<TAB>",
                        open_help = "?",
                    },
                    colors = {
                        background = "#1f2227",
                        folded_section = "#56b6c2",
                    },

                    parts = {
                        "header",
                        "header_2",
                        "body",
                        "footer",
                    },
                }

            )
        end
    }

}
