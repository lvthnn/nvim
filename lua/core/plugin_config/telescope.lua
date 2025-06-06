local builtin = require('telescope.builtin')

vim.keymap.set('n', '<c-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader><leader>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
