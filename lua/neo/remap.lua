vim.g.mapleader = " "
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected line down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected line up" })

vim.keymap.set("n", "J", "mzJ`z", { desc = "Joins current line with next" })
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set('n', '<C>', ':lua require("which-key").show("<C>")<CR>', { noremap = true, silent = true })

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]],
    { desc = "deletes selected without saving then pastes the previously yanked/deleted before cursor" })

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yanks selected to system clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yanks entire line to system clipboard" })

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]],
    { desc = "deletes the selected text without affecting the system clipboard" })

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "format" })

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz", { desc = "next item in the quickfix list and focus" })
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz", { desc = "prev item in the quickfix list and focus" })
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = "Go to next line and focus" })
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = "Go to previous line and focus" })

vim.keymap.set("n", "<leader>rd", [[:%s/\<<C-r><C-w>\>//g<CR>]],
    { desc = "Delete all occurrences of the word under the cursor" })
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
    { desc = "Search and replace cursor" })
vim.keymap.set("n", "<leader>exe", "<cmd>!chmod +x %<CR>", { silent = true, desc = "Make executable" })



vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
