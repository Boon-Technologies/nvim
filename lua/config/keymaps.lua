-- Set leader key to space
vim.g.mapleader = ' '

-- Key mappings
local map = vim.api.nvim_set_keymap
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { noremap = true })
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { noremap = true })
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { noremap = true })
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', { noremap = true })
map('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true })
map('n', '<leader>t', ':ToggleTerm<CR>', { noremap = true })
map('n', '<leader>h', '<C-w>h', { noremap = true })
map('n', '<leader>j', '<C-w>j', { noremap = true })
map('n', '<leader>k', '<C-w>k', { noremap = true })
map('n', '<leader>l', '<C-w>l', { noremap = true })
map('n', '<leader>s', '<C-w>s', { noremap = true })
map('n', '<leader>v', '<C-w>v', { noremap = true })
map('n', '<leader>c', '<C-w>c', { noremap = true })
map('n', '<leader>o', '<C-w>o', { noremap = true })

