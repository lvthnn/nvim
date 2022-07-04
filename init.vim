"	 _       _ _         _           
"	(_)     (_) |       (_)          
"	 _ _ __  _| |___   ___ _ __ ___  
"	| | '_ \| | __\ \ / / | '_ ` _ \ 
"	| | | | | | |_ \ V /| | | | | | |
" |_| |_|_|\__(_)_/ |_|_| |_| |_| |

" Global settings
set encoding=utf-8
set noswapfile
set scrolloff=10
set backspace=indent,eol,start
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set fileformat=unix
set guicursor=i:block
set termguicolors
set nohlsearch
set nowrap
set number

set laststatus=0 

let mapleader=','
set shortmess=I

source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/hotkeys.vim
luafile $HOME/.config/nvim/plugin/treesitter.lua
luafile $HOME/.config/nvim/plugin/lsp/lsp-config.lua

colorscheme nightfly 
let g:transparent_enabled = v:true

