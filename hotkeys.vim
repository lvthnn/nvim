" Hotkeys for NeoVim

" BASIC HOTKEYS : NAVIGATION, FILE EDITING, ETC.
nmap <F1> :q<CR>
nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :vsp<CR>
nmap <F4> :sp<CR>
nmap <leader>s :w<CR>

" NAVIGATION
noremap <M-Up> :m-2<CR>
noremap <M-Down> :m+<CR>
nmap <S-l> :tabnext<CR>
nmap <S-h> :tabprevious<CR>

" SPLITTING SCREEN
nmap <leader>hs :split<CR>
nmap <leader>ss :vsplit<CR>
