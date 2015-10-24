runtime! ftplugin/c_style_util.vim

inoremap .. ->

nnoremap <A-t> :silent !ctags -R .<cr>
set tags+=./tags
nnoremap <leader>. :CtrlPTag<cr>
