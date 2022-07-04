o" NERDTree
let NERDTreeQuitOnOpen=0
let g:NERDTreeMinimalUI=1
nmap <C-c> :NERDTreeClose<CR>

" Open the existing NERDTree on each new tab
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
