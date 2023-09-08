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
let g:test#strategy = 'vimux'
let g:rspec_command = "bundle exec rspec"
let test#ruby#cucumber#executable = "bundle exec spinach"
let test#ruby#cucumber#options= '-b'
let test#javascript#mocha#executable = 'yarn test --reporter dot'
]])

vim.keymap.set("n", "<leader>t", ":TestFile<CR>")
vim.keymap.set("n", "<leader>s", ":TestNearest<CR>")
vim.keymap.set("n", "<leader>l", ":TestLast<CR>")
vim.keymap.set("n", "<leader>g", ":TestVisit<CR>")
