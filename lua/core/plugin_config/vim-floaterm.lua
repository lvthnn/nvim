-- Normal mode mappings
vim.keymap.set('n', '<leader>lt', ':FloatermToggle<CR>')
vim.keymap.set('n', '<leader>ln', ':FloatermNew<CR>')
vim.keymap.set('n', '<leader>l]', ':FloatermNext<CR>')
vim.keymap.set('n', '<leader>l[', ':FloatermPrev<CR>')
vim.keymap.set('n', '<leader>lx', ':FloatermKill<CR>')

-- Terminal mode mappings
vim.keymap.set('t', '<leader>lt', '<C-\\><C-n>:FloatermToggle<CR>')
vim.keymap.set('t', '<leader>ln', '<C-\\><C-n>:FloatermNew<CR>')
vim.keymap.set('t', '<leader>l]', '<C-\\><C-n>:FloatermNext<CR>')
vim.keymap.set('t', '<leader>l[', '<C-\\><C-n>:FloatermPrev<CR>')
vim.keymap.set('t', '<leader>lx', '<C-\\><C-n>:FloatermKill<CR>')

-- Floaterm window behaviour
vim.g.floaterm_width = 0.8
vim.g.floaterm_height = 0.8
vim.g.floaterm_autoclose = 1

vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
