local padding = { left = 2, right = 1}

require('lualine').setup({
  options = {
    component_separators = '',
    section_separators = { left = '', right = '' },
    padding = { left = 5, right = 5},
  },

  sections = {
    lualine_a = {
      { 'mode', padding = padding },
    },
    lualine_b = {
      { 'branch', padding = padding },
      { 'diff',   padding = padding },
      { 'filename', padding = padding },
    },
    lualine_c = {},
    lualine_x = {},
    lualine_y = {
      { 'filetype', padding = padding },
    },
    lualine_z = {
      { '%l:%c', padding = padding },
    },
  },
})
