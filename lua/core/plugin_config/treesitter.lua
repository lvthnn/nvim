require 'nvim-treesitter.configs'.setup {
  ensure_installed = { 'c', 'lua', 'rust', 'cpp', 'vim', 'java', 'r' },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
}

local parser_config = require 'nvim-treesitter.parsers'.get_parser_configs()

parser_config.stan = {
  install_info = {
    url = 'https://github.com/WardBrian/tree-sitter-stan',
    files = { 'src/parser.c' },
    branch = 'main',
    generate_requires_npm = false,
    requires_generate_from_grammar = false
  },
}

vim.filetype.add({
  extension = { stan = 'stan' },
})

vim.treesitter.language.register('stan', { 'stan' })
