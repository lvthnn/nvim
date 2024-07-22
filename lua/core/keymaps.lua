-- highlighting settings
vim.keymap.set('n', '<leader>h', ':nohl<CR>')

-- navigation
vim.keymap.set('n', '<S-l>', ':bn<CR>')
vim.keymap.set('n', '<S-h>', ':bp<CR>')
vim.keymap.set('n', '<leader>vs', ':vs<CR>')
vim.keymap.set('n', '<leader>hs', ':sp<CR>')
vim.keymap.set('n', '<leader>q', ':b#|bd#<CR>')
vim.keymap.set('i', 'jj', '<esc>')

-- file editing
vim.keymap.set('n', '<leader>ps', ':PackerSync<CR>')
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>S', ':so %<CR>')
vim.keymap.set('n', '<leader>lc', ':VimtexCompile<CR>')
vim.keymap.set('i', '<S-Tab>', '<C-D>')
