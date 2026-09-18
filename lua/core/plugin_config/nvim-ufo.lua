vim.o.foldcolumn = '1'
vim.o.foldlevel = 99 -- ufo needs a high value; it manages actual fold state itself
vim.o.foldlevelstart = 99
vim.o.foldenable = true

-- treesitter as primary provider, falling back to indent-based folding
-- when a filetype has no treesitter parser
require('ufo').setup({
  provider_selector = function(bufnr, filetype, buftype)
    return { 'treesitter', 'indent' }
  end
})

-- ufo remaps zR/zM to open/close *all* folds, incl. ones it hasn't
-- expanded yet; the built-in zR/zM only see currently-known folds
vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)

-- persist folds across sessions: ufo sets foldmethod=manual under the
-- hood, so vim's view files (which save manual folds) work with it
local save_fold = vim.api.nvim_create_augroup('PersistentFolds', { clear = true })

vim.api.nvim_create_autocmd('BufWinLeave', {
  pattern = '*.*',
  group = save_fold,
  callback = function() pcall(vim.cmd.mkview) end,
})

vim.api.nvim_create_autocmd('BufWinEnter', {
  pattern = '*.*',
  group = save_fold,
  callback = function() pcall(vim.cmd.loadview) end,
})
