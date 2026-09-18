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
vim.opt.sidescrolloff = 8
vim.opt.colorcolumn = '80'
vim.opt.textwidth = 80
vim.opt.termguicolors = true
vim.wo.relativenumber = true
vim.wo.number = true
vim.opt.clipboard = "unnamedplus"

-- spaces, tabs etc.
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.cmd [[ set noswapfile ]]

-- show open buffers as a tabline so it's obvious what's actually open
function _G.buffer_tabline()
  local line = ''
  for _, bufnr in ipairs(vim.api.nvim_list_bufs()) do
    if vim.bo[bufnr].buflisted then
      local name = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(bufnr), ':t')
      if name == '' then name = '[No Name]' end
      local modified = vim.bo[bufnr].modified and ' [+]' or ''
      local hl = bufnr == vim.api.nvim_get_current_buf() and '%#TabLineSel#' or '%#TabLine#'
      line = line .. hl .. ' ' .. bufnr .. ': ' .. name .. modified .. ' %#TabLineFill#|'
    end
  end
  return line
end

vim.o.tabline = '%!v:lua.buffer_tabline()'
vim.o.showtabline = 2
