-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

map("n", "te", ":tabedit")

map("n", "<leader>bd", ":bdelete<cr>")
map("n", "<leader>bn", ":bnext<cr>")
map("n", "<leader>bn", ":bprevious<cr>")

map("n", "<leader>hh", ":EpiHeader<cr>")

map("n", "<leader>l", ":LazyGit<cr>")

map("n", "<C-m>", "<C-i>", opts)

map("n", "ss", ":split<cr>", opts)
map("n", "sv", ":vsplit<cr>", opts)

map("n", "<leader>rr", ":IncRename")

map("n", "<C-j>", function()
    vim.diagnostic.goto_next()
end, opts)

map("x", "<leader>re", ":Refactor extract ")
map("x", "<leader>rf", ":Refactor extract_to_file ")

map("x", "<leader>rv", ":Refactor extract_var ")

map({ "n", "x" }, "<leader>ri", ":Refactor inline_var")

map( "n", "<leader>rI", ":Refactor inline_func")

map("n", "<leader>rb", ":Refactor extract_block")
map("n", "<leader>rbf", ":Refactor extract_block_to_file")

map("n", "<leader>cd", ":Copilot disable<cr>")
map("n", "<leader>ce", ":Copilot enable<cr>")
map("n", "<leader>ct", ":Copilot toggle<cr>")


map("n", "<leader>ha", mark.add_file)
map("n", "<leader>he", ui.toggle_quick_menu)

map("n", "<leader>h1", function() ui.nav_file(1) end)
map("n", "<leader>h2", function() ui.nav_file(2) end)
map("n", "<leader>h3", function() ui.nav_file(3) end)

map("n", "<leader><F5>", vim.cmd.UndotreeToggle)
