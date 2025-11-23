vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('nvim-tree').setup()

vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')

-- vim.api.nvim_create_autocmd("ColorScheme", {
--   pattern = "*",
--   callback = function()
--     vim.api.nvim_set_hl(0, "NvimTreeNormal",      { bg = "none" })
--     vim.api.nvim_set_hl(0, "NvimTreeNormalNC",    { bg = "none" })
--     vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { bg = "none" })
--     vim.api.nvim_set_hl(0, "NvimTreeWinSeparator",{ bg = "none", fg = "#444444" })
--   end
-- })
