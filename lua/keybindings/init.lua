vim.g.mapleader = ','
vim.g.cmdheight = 2
local kmap = vim.api.nvim_set_keymap
--kmap('i', 'jk', '<ESC>', {noremap = true, silent = false})
--kmap('i', 'kj', '<ESC>', {noremap = true, silent = false})
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<leader>fo', ':NvimTreeOpen<CR>', { noremap = true, desc = 'Open Nvim Tree ' })
vim.keymap.set('n', '<leader>fc', ':NvimTreeClose<CR>', { noremap = true, desc = 'Close Nvim Tree ' })
vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true, desc = 'Toggle to the left Nvim Tree ' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true, desc = 'Toggle to the right of the nvim Tree ' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true, desc = 'toggle down to the Nvim Tree ' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true, desc = 'Toggle up Nvim Tree ' })
vim.keymap.set('i', '<C-Space>', '<ESC>', {noremap = true, silent = false})
vim.keymap.set('i', '<C-@>', '<ESC>', {noremap = true, silent = false})
vim.keymap.set('v', '<leader>gp', ':ChatGPTEditWithInstructions<CR>',  {noremap = true, silent = false})
