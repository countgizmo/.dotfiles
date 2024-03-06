vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Clear hlsearch
vim.keymap.set("n", "<leader>k", ":nohlsearch<CR>")

-- Resize with arrows
vim.keymap.set("n", "<C-Up>", ":resize +2<CR>")
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>")
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>")
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>")

-- Keep the cursor in the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste over without losing the copied value
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Quickfix list
vim.keymap.set("n", "<leader>co", ":copen<CR>")
vim.keymap.set("n", "<leader>cc", ":cclose<CR>")

-- Location list
vim.keymap.set("n", "<leader>lo", ":lopen<CR>")
vim.keymap.set("n", "<leader>lc", ":lclose<CR>")

-- Copy with {}
vim.keymap.set("n", "YY", "va{Vy")

-- Jump between test and function
vim.keymap.set("n","tg", ":CcaNsJumpToAlternate<CR>")
