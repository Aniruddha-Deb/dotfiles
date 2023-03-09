local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = ' '

map("n", "[b", ":bp<cr>")
map("n", "]b", ":bn<cr>")
map("n", "<leader>d", ":bp|bd #<CR>")
map("n", "<leader>h", "<C-W>h")
map("n", "<leader>j", "<C-W>j")
map("n", "<leader>k", "<C-W>k")
map("n", "<leader>l", "<C-W>l")

-- Some useful NvimTree mappings
map("n", "<leader>n", ":NvimTreeToggle<cr>")
vim.keymap.set('n', '<leader>f', ":NvimTreeFocus<cr>", {noremap = true})

-- CompetiTest maps
map("n", "<leader>r", ":CompetiTestReceive<cr>")
map("n", "<leader>b", ":CompetiTestRun<cr>")

-- telescope maps
local builtin = require('telescope.builtin')
vim.keymap.set('n', 'ff', builtin.find_files, {})
vim.keymap.set('n', 'fg', builtin.live_grep, {})
vim.keymap.set('n', 'fb', builtin.buffers, {})
vim.keymap.set('n', 'fh', builtin.help_tags, {})
vim.keymap.set('n', 'fd', builtin.diagnostics, {})

map("n", "<silent> <C-l>", ":nohl<CR><C-l>")
-- vim.keymap.set("n", "<expr>j", "v:count ? 'j' : 'gj'")
-- vim.keymap.set("n", "<expr>k", "v:count ? 'k' : 'gk'")

-- jump to next/previous error
map("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>", { noremap = true, silent = true })
map("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>", { noremap = true, silent = true })

-- some useful stuff from Angad's dotfiles
-- Switch modes from home row
-- vim.api.nvim_set_keymap("i", "jk", "<Esc>", {noremap("n", "= true})
-- vim.api.nvim_set_keymap("v", "aa", "<Esc>", {noremap("n", "= true})

-- -- Easier movement over lines
-- vim.api.nvim_set_keymap("n", ";", ":", {noremap("n", "= true})
-- vim.api.nvim_set_keymap("n", "0", "^", {noremap("n", "= true})
-- vim.api.nvim_set_keymap("n", "j", "gj", {noremap("n", "= true})
-- vim.api.nvim_set_keymap("n", "k", "gk", {noremap("n", "= true})
-- vim.api.nvim_set_keymap("n", "<Down>", "gj", {noremap("n", "= true})
-- vim.api.nvim_set_keymap("n", "<Up>", "gk", {noremap("n", "= true})

-- -- Save and quit
-- vim.api.nvim_set_keymap("n", "<leader><leader>", ":w<CR>", {noremap("n", "= true})
-- vim.api.nvim_set_keymap("n", "<leader>W", ":Wall<CR>", {noremap("n", "= true})
-- vim.api.nvim_set_keymap("n", "<leader>q", ":q<CR>", {noremap("n", "= true})
