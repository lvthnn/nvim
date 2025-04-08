require('mason').setup()
require('mason-lspconfig').setup({
  automatic_installation = true,
  ensure_installed = { 'lua_ls', 'pyright', 'r_language_server', 'jdtls' },
})

local on_attach = function(_, _)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lspconfig = require('lspconfig')

lspconfig.lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {
          'vim',
          'require'
        },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

local servers = { 'r_language_server', 'pyright', 'jdtls', 'texlab' }

for _, server in pairs(servers) do
  lspconfig[server].setup {
    on_attach = on_attach,
    capabilities = capabilities
  }
end

local rcpp_packages = { 'Rcpp', 'RcppArmadillo', 'RcppEigen' }
local rcpp_headers = {}

for _, rcpp_package in ipairs(rcpp_packages) do
  rcpp_header = vim.fn.system({
    'Rscript', '-e',
    'system.file("include", package = "' .. rcpp_package .. '")',
  })

  rcpp_header = vim.trim(rcpp_header)
  table.insert(rcpp_headers, '-I' .. rcpp_header)
end

lspconfig.clangd.setup {
  cmd = { 'clangd', '--completion-style=detailed', '--header-insertion=never' },
  capabilities = capabilities,
  init_options = {
    compilationDatabasePath = 'build',
    fallbackFlags = rcpp_headers
  }
}
