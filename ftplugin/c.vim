inoremap <leader>cb <ESC>A<CR>{}<ESC>i<CR><ESC>O
inoremap <leader><leader>cb <ESC>A<CR>{};<ESC><left>i<CR><ESC>O
inoremap .. ->

" (insert) (semikolon)
inoremap <leader><leader> <ESC>A;
compiler msvc
set makeprg=build.bat

nnoremap <A-t> :silent !ctags -R .<cr>
set tags+=./tags
nnoremap <leader>. :CtrlPTag<cr>
