let g:floaterm_keymap_toggle = '<leader>t'
nmap <leader>tp :FloatermNew python3<CR>
nmap <F3> :FloatermNew python3 %<CR>
nmap <leader>tg :FloatermNew lazygit<CR>
nmap <leader>tm :FloatermNew gtop<CR>
"let g:floaterm_keymap_next   = '<F2>'
"let g:floaterm_keymap_prev   = '<F3>'
"let g:floaterm_keymap_new    = '<F4>'

" Floaterm
let g:floaterm_gitcommit='floaterm'
let g:floaterm_autoinsert=1
let g:floaterm_width=0.8
let g:floaterm_height=0.8
let g:floaterm_wintitle=0
let g:floaterm_autoclose=1

" Color options
hi Floaterm guibg=transparent
hi FloatermBorder guibg=transparent
