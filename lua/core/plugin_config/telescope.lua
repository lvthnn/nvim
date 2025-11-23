local telescope = require('telescope')
local builtin = require('telescope.builtin')
local themes = require('telescope.themes')

local ivy_picker = function()
  return themes.get_ivy({
    prompt_prefix = "> ",
    results_title = false,
    layout_config = { height = 0.30 },
    winblend = 0,
  })
end

vim.keymap.set('n', '<c-p>', function()
  builtin.git_files(ivy_picker())
end, {})

vim.keymap.set('n', '<leader><leader>', function()
  builtin.find_files(ivy_picker())
end, {})

vim.keymap.set('n', '<leader>fu', function()
  builtin.live_grep(ivy_picker())
end, {})

vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
