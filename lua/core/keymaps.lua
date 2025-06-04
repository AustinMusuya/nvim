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



----Buffer set-up----

-- Next / previous buffer
vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", { desc = "Previous buffer" })

-- Jump directly to buffer 1–9 using Space + number
for i = 1, 9 do
  vim.keymap.set("n", "<leader>" .. i, "<Cmd>BufferLineGoToBuffer " .. i .. "<CR>", { desc = "Go to buffer " .. i })
end

-- Close current buffer with Space + c
vim.keymap.set("n", "<leader>c", "<Cmd>Bdelete<CR>", { desc = "Close current buffer" })

-- Move buffer left: Space + < (that's Shift + ,)
vim.keymap.set("n", "<leader><", "<Cmd>BufferLineMovePrev<CR>", { desc = "Move buffer left" })

-- Move buffer right: Space + > (that's Shift + .)
vim.keymap.set("n", "<leader>>", "<Cmd>BufferLineMoveNext<CR>", { desc = "Move buffer right" })


