-- Keymaps for better default experience

-- Set leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- For conciseness
local opts = { noremap = true, silent = true}


-- Save files (with autoformatting)
vim.keymap.set('n', '<C-s>', '<cmd> w <CR>', opts)

-- Save files without formatting
vim.keymap.set('n', '<C-k>s', '<cmd>noautocmd w<CR>', opts)

-- Enter normal mode easily from insert mode
vim.keymap.set('i', '<C-n>', '<Esc>', opts)

-- Switch windows easily left , right, top, bottom
vim.keymap.set('n', '<C-h>', '<C-w>h', opts) -- left
vim.keymap.set('n', '<C-l>', '<C-w>l', opts) -- right
vim.keymap.set('n', '<C-j>', '<C-w>j', opts) -- down
vim.keymap.set('n', '<C-k>', '<C-w>k', opts) -- up

-- Resize windows with arrows
vim.keymap.set('n', '<Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<Right>', ':vertical resize +2<CR>', opts)


--Toggle neotree
vim.keymap.set('n', '<C-_>', '<cmd>Neotree toggle<CR>', opts)

