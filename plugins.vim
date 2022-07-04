call plug#begin('~/.vim/plugged')
    " Utility
    Plug 'jiangmiao/auto-pairs'
    Plug 'scrooloose/nerdtree' |
        \ Plug 'Xuyuanp/nerdtree-git-plugin' |
        \ Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'preservim/nerdcommenter'
    Plug 'preservim/nerdtree'
    Plug 'vim-airline/vim-airline'

    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
	  Plug 'voldikss/vim-floaterm'

    Plug 'honza/vim-snippets'
    Plug 'lervag/vimtex'
    Plug 'SirVer/ultisnips'

    Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

    " Syntax completion etc.
    if has('nvim')
        Plug 'neovim/nvim-lspconfig'
        Plug 'williamboman/nvim-lsp-installer'
        Plug 'glepnir/lspsaga.nvim'
        Plug 'hrsh7th/nvim-compe'
        Plug 'mfussenegger/nvim-jdtls'
    endif

    " Themes
    Plug 'ellisonleao/gruvbox.nvim'
    Plug 'marko-cerovac/material.nvim'
    Plug 'ayu-theme/ayu-vim'
    Plug 'wojciechkepka/vim-github-dark'
    Plug 'bluz71/vim-nightfly-guicolors'
    Plug 'joshdick/onedark.vim'
    Plug 'morhetz/gruvbox'

    " Appearance
    Plug 'xiyaowong/nvim-transparent'
call plug#end()

