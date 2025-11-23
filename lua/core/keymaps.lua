-- highlighting settings
vim.keymap.set('n', '<leader>h', ':nohl<CR>')

-- movemenet between buffers
vim.keymap.set('n', '<S-h>', ':bp<CR>')
vim.keymap.set('n', '<S-l>', ':bn<CR>')

-- move between tabs
vim.keymap.set('n', '<S-t>l', ':tabnext<CR>')
vim.keymap.set('n', '<S-t>h', ':tabprevious<CR>')

-- move between split windows
-- vim.keymap.set('n', '<leader>wh', ':wincmd h<CR>')
-- vim.keymap.set('n', '<leader>wj', ':wincmd j<CR>')
-- vim.keymap.set('n', '<leader>wk', ':wincmd k<CR>')
-- vim.keymap.set('n', '<leader>wl', ':wincmd l<CR>')

-- splitting options
vim.keymap.set('n', '<leader>vs', ':vs<CR>')
vim.keymap.set('n', '<leader>hs', ':sp<CR>')

-- close buffers
vim.keymap.set('n', '<leader>q', ':b#|bd#<CR>')

-- file editing
vim.keymap.set('n', '<leader>ps', ':PackerSync<CR>')
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>S', ':so %<CR>')
vim.keymap.set('n', '<leader>lc', ':VimtexCompile<CR>')
vim.keymap.set('i', '<S-Tab>', '<C-D>')

-- allow copying to clipboard
vim.keymap.set('n', 'Y', '"+y', { noremap = true })
vim.keymap.set('v', 'Y', '"y', { noremap = true })

-- exit terminal insert mode normally
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { noremap = true })

vim.keymap.set('n', '<leader>d', function()
  vim.diagnostic.open_float(nil, { focus = false })
end, { desc = "Show diagnostic" })
