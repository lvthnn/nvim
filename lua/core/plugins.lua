local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') ..
      '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1',
      'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig'
  }
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'rafamadriz/friendly-snippets'
  use 'windwp/nvim-autopairs'
  use 'lervag/vimtex'

  use 'R-nvim/R.nvim'

  -- themes
  use 'ellisonleao/gruvbox.nvim'
  use 'vim-scripts/dual.vim'
  use 'CodeGradox/onehalf-lush'

  use 'xiyaowong/transparent.nvim'

  if packer_bootstrap then
    require('packer').sync()
  end
end)
