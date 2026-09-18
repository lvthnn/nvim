local parsers = {
  'c', 'lua', 'rust', 'cpp', 'vim', 'java', 'r',
  'markdown', 'markdown_inline', 'yaml', 'latex', 'rnoweb',
  'csv', 'json', 'python',
}

require('nvim-treesitter').install(parsers)

-- highlighting, indent and folding are native Neovim features (0.12+);
-- nvim-treesitter only installs parsers/queries now
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'c', 'lua', 'rust', 'cpp', 'vim', 'java', 'r',
              'markdown', 'yaml', 'tex', 'rnoweb', 'csv', 'json', 'python' },
  callback = function()
    pcall(vim.treesitter.start)
    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
  end,
})
