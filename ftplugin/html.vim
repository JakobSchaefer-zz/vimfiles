function! InsertCurlyBrackets()
  normal! A {
  normal! o}
endfunction

nnoremap <leader>cb :call InsertCurlyBrackets()<cr>O
