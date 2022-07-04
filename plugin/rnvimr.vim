" Make ranger replace netrw and be the file explorer
let g:rnvimr_enable_ex = 1
let g:rnvimr_enable_picker = 1

let g:rnvimr_action = {
    \ 't': 'NvimEdit tabedit',
    \ 'x': 'NvimEdit split',
    \ 'v': 'NvimEdit vsplit'
    \ }

" Enable border
let g:rnvimr_draw_border = 1
let g:rnvimr_ranger_cmd = 'ranger --cmd="set draw_borders both"'
