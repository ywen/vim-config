-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.api.nvim_set_keymap("n", ";", ":", { noremap = true })
vim.api.nvim_set_keymap("n", "fb", ":b#<CR>", { noremap = true })

-- split window and navigate keys
vim.keymap.set("n", "<leader>v", "<C-w>v<C-w>l")
vim.keymap.set("n", "<leader>w", "<C-w>s<C-w>l")
vim.keymap.set("n", "<leader>w", "<C-w>s<C-w>l")

vim.cmd([[
set clipboard=unnamed
set number
set autowriteall
set gdefault
set directory=~/.config/nvim/swp
autocmd BufLeave,FocusLost * wall
command BufOnly silent! execute "%bd|e#|bd#"
]])
