local cmp = require'cmp'

cmp.setup({
  mapping = {
    -- Trigger completion manually, e.g., Ctrl+Space
    ['<C-Space>'] = cmp.mapping.complete(),
    
    -- Confirm selection
    ['<CR>'] = cmp.mapping.confirm({ select = true }),

    -- You can remove Tab/Shift-Tab entirely if you want
    -- ['<Tab>'] = cmp.mapping.select_next_item(),
    -- ['<S-Tab>'] = cmp.mapping.select_prev_item(),
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
  }
})
