require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'onehalf-lush',
  },
  sections = {
    lualine_a = {
      {
        'buffers',
        show_filename_only = true,
        show_filename_extension = false,
        show_modified_status = true,
      }
    }
  }
}
