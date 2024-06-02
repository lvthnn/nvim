require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "rust", "cpp", "vim", "java", "r" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
}
