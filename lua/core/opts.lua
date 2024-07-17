-- leader options
vim.g.mapleader = ' '
vim.g.localmapleader = ' '
vim.g.tex_flavor = 'tex'

-- editor options
vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.autowrite = true
vim.opt.smarttab = true
vim.opt.autoread = true
vim.opt.guicursor = 'n-v-i-c:block-Cursor'
vim.opt.scrolloff = 8
vim.opt.colorcolumn = '80'
vim.wo.number = true
vim.wo.relativenumber = true

-- spaces, tabs etc.
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.cmd [[ set noswapfile ]]
