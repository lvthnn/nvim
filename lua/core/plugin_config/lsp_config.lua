local on_attach = function(_, _)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', 'ca', vim.lsp.buf.code_action, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

local cmp = require('cmp')
cmp.setup({
  sources = {
    { name = 'nvim_lsp' },  -- Critical for LSP completions!
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
})

local servers = { 'r_language_server', 'texlab' }

for _, server in pairs(servers) do
  vim.lsp.config(server, {
    on_attach = on_attach,
    capabilities = capabilities
  })
  vim.lsp.enable(server)
end

-- setup pyright
vim.lsp.config('pyright', {
  on_attach = on_attach,
  capabilities = capabilities,
  before_init = function(_, config)
    local venv = vim.fn.getenv('VIRTUAL_ENV')
    if venv and venv ~= vim.NIL and venv ~= '' then
      config.settings = config.settings or {}
      config.settings.python = config.settings.python or {}
      config.settings.python.pythonPath = venv .. '/bin/python'
    end
  end,
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
        diagnosticMode = 'workspace',
      },
    },
  },
})
vim.lsp.enable('pyright')

-- setup clangd
vim.lsp.config('clangd', {
  cmd = {
    'clangd',
    '--completion-style=detailed',
    '--header-insertion=never',
  },
  capabilities = capabilities,
  on_attach = on_attach,
})

vim.lsp.enable('clangd')
