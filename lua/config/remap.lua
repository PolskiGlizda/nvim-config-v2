-- leader
vim.g.mapleader = " "
-- Explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Explorer" })
-- paste from clipboard
vim.keymap.set("x", "<leader>p", '"_dP', { desc = "Paste from clipboard" })
-- copy to clipboard
vim.keymap.set("n", "<leader>y", '"+y', { desc = "Copy to clipboard" })
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Copy to clipboard" })
vim.keymap.set("n", "<leader>Y", '"+Y', { desc = "Copy to clipboard" })
-- replace text
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replace text" })
-- make executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { desc = "Make executable", silent = true })
-- navigate between panes
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>", { desc = "Navigate up" })
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>", { desc = "Navigate down" })
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>", { desc = "Navigate left" })
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>", { desc = "Navigate right" })
