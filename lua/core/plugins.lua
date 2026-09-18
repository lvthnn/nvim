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
  -- install packer
  use 'wbthomason/packer.nvim'

  -- set up the editor
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  use { 'nvim-treesitter/nvim-treesitter', branch = 'main' }
  use {
    'nvim-telescope/telescope.nvim',
    branch = 'master',
    requires = { { 'nvim-lua/plenary.nvim' } },
  }
  use 'windwp/nvim-autopairs'
  use 'voldikss/vim-floaterm'
  use 'folke/flash.nvim'
	use({
			"kylechui/nvim-surround",
			tag = "*",
			config = function()
					require("nvim-surround").setup({ })
			end
	})

  -- lsp plugins
  use {
    'neovim/nvim-lspconfig'
  }
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'rafamadriz/friendly-snippets'
  use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'}

  -- require("packer").startup(function()
  -- use({
  --   "stevearc/aerial.nvim",
  --   config = function()
  --     require("aerial").setup()
  --   end,
  -- })
  -- end)

  -- language specific plugins
  use 'lervag/vimtex'
  use 'R-nvim/R.nvim'

  -- plugins for git support
  use 'tpope/vim-fugitive'
  use 'kdheepak/lazygit.nvim'

  -- themes
  use 'xiyaowong/transparent.nvim'
  use 'projekt0n/github-nvim-theme'

  if packer_bootstrap then
    require('packer').sync()
  end
end)
