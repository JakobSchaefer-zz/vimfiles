" SETTINGS " SETTINGS " SETTINGS " SETTINGS " SETTINGS " SETTINGS " SETTINGS "
""""""""""""""""""""""""""" GVIM SETTINGS """"""""""""""""""""""""""""""""""""
  if has("gui_running")
  set guioptions-=m  "remove menu bar
  set guioptions-=T  "remove toolbar
  set guioptions-=r  "remove right-hand scroll bar
  set guioptions-=L  "remove left-hand scroll bar
    if has("gui_gtk2")
      set guifont=Inconsolata\ 12
    elseif has("gui_macvim")
      set guifont=Menlo\ Regular:h14
    elseif has("gui_win32")
      set guifont=Consolas:h11:cANSI
    endif
  endif
  autocmd GUIEnter * set t_vb=
"""""""""""""""""""""""""""""" VUNDLE """"""""""""""""""""""""""""""""""""""""
  set nocompatible
  filetype off

  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()

  Plugin 'gmarik/Vundle.vim'
  " Boooooom
  Plugin 'Lokaltog/vim-easymotion'

  " Automatische Klammerung
  Plugin 'Raimondi/delimitMate'

  " ctrl-n super schnell und unkompliziert
  Plugin 'ervandew/supertab'

  " Besserer Filetree
  Plugin 'scrooloose/nerdtree'

  " Nur zum kommentieren einzelner zeilen
  Plugin 'scrooloose/nerdcommenter'

  " Helleres farbschema
  Plugin 'altercation/vim-colors-solarized'

  " Just for fun
  Plugin 'terryma/vim-multiple-cursors'

  " BOOOOOOOM
  Plugin 'SirVer/ultisnips'

  " Main colorshemeeeeemeee
  Plugin 'tomasr/molokai'

  call vundle#end()

  filetype plugin indent on
  """"""""""""""""""""
  compiler msvc
  set makeprg=build.bat

  let g:vimshell_user_prompt = 'fnamemodify(getcwd(), ":~")'
  let g:NERDSpaceDelims = 1

  let g:EasyMotion_smartcase = 1

  let g:UltiSnipsExpandTrigger="<leader><tab>"
  let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
  let g:UltiSnipsJumpBackwardTrigger="<leader><leader><tab>"

  " BASIS
  set history=1000
  set autoread
  set backspace=eol,start,indent
  set noerrorbells
  set visualbell
  set t_vb=
  set tm=500

  set foldmethod=indent
  set foldnestmax=1
  set foldenable
  set foldlevel=1

  set lines=50
  set columns=125
  set updatetime=750
  set splitbelow
  set splitright
  set virtualedit=block

  let mapleader = ","

  " SUCHE
  set nohlsearch
  set smartcase
  set incsearch

  " OBERFLAECHE
  set scrolloff=10
  set wildmenu
  set wildignore=*.o
  set ruler
  set number
  set cmdheight=1
  set laststatus=2
  syntax on
  set cursorline
  set t_Co=256

  " STATUSBAR
  set statusline-=%t
""""""""""""""""""""" FARBEN UND FORMATIERUNGEN """"""""""""""""""""""""""""""
  set background=dark
  colorscheme molokai
  set encoding=utf8
  set ffs=unix,dos,mac
  set listchars=eol:¬,tab:»·,trail:·
  set list
  hi MatchParen cterm=bold ctermbg=none ctermfg=blue
  match Title /TODO/

"""""""""""""""""""""""""""" SICHERUNGEN """""""""""""""""""""""""""""""""""""
  set nobackup
  set nowb
  set noswapfile

"""""""""""""""""""""" TABS UND ZEILENUMBRUECHE """"""""""""""""""""""""""""""
  set smarttab
  set expandtab
  set shiftwidth=2
  set tabstop=2
  set linebreak
  set tw=500 " Zeilenumbruch nach 500 Zeichen
  set autoindent
  set smartindent
  set wrap

" MAPING " MAPING " MAPPING " MAPPING " MAPPING " MAPPING " MAPPING "
""""""""""""""""""""""""""""" VISUALMODE """""""""""""""""""""""""""""""""""""
  " Deaktiviert die Pfeiltasten
  vnoremap <down> <Nop>
  vnoremap <left> <Nop>
  vnoremap <right> <Nop>
  vnoremap <up> <Nop>
  inoremap <down> <Nop>
  imap <left> <Nop>
  imap <right> <Nop>
  inoremap <up> <Nop>
  nnoremap <down> :cn<CR>
  nnoremap <left> <Nop>
  nnoremap <right> <Nop>
  nnoremap <up> :cp<CR>

  " Navigation im viusal mode
  vnoremap J }
  vnoremap K {

""""""""""""""""""""""""""""" INSERTMODE """""""""""""""""""""""""""""""""""""
  " BEASTMODE ON!!!!
  inoremap jk <ESC>
  inoremap jK <ESC>
  inoremap JK <ESC>

  " (insert) (right)
  inoremap <leader>l <ESC>A
  " (insert) semicolon
  inoremap <leader>; <ESC>A;
  " (insert) curly brackets
  inoremap <leader>cb <ESC>A<space>{}<ESC>i<CR><ESC>O

""""""""""""""""""""""""""""" NORMALMODE """""""""""""""""""""""""""""""""""""
  " Makros erstmal deaktiviert! Folding!
  nnoremap q za

  " Passende Einrückung
  nnoremap = =<CR>

  " Schnelles speichern und schliessen von Dokumenten
  nnoremap <leader>w :w!<CR>
  nnoremap <leader>q :q<CR>
  nnoremap <leader><leader>q :q!<CR>
  nnoremap ! :w<CR>:!

  " Navigation innerhalb von Splitts
  " go (split right)
  nnoremap gk <C-w>k
  " go (split down)
  nnoremap gj <C-w>j
  " go (split left)
  nnoremap gh <C-w>h
  " go (split right)
  nnoremap gl <c-w>l

  nnoremap gt <Nop>
  nnoremap gT <Nop>

  " Navigation überspringt nun keine Zeilenumbrüche
  nnoremap k gk
  nnoremap j gj

  " Intuitivere Navigation mit shift
  nnoremap J }
  nnoremap K {
  nnoremap H ^
  nnoremap L $

  " Bewegung zwischen Tabs
  " tab next
  nnoremap tn gt
  " tab previous
  nnoremap tp gT

  " Redo!
  nnoremap U <c-R>

  " delete line
  nnoremap dl dd
  nnoremap dd <Nop>

  "Caps ändern
  nnoremap + ~
  nnoremap ~ <Nop>

  " Handlicherer visual mode
  " visual block
  nnoremap vb <C-v>
  " visual line
  nnoremap vl <S-v>

  " Tab zum Einrücken
  nnoremap <tab> >>
  nnoremap <s-tab> <<
  vnoremap <tab> >
  vnoremap <s-tab> <

  " Plugin settings and mappings
  " find
  map f <Plug>(easymotion-s2)
  map / <Plug>(easymotion-sn)
  omap / <Plug>(easymotion-sn)
  map  n <Plug>(easymotion-next)
  map  N <Plug>(easymotion-prev)
  map # /<c-r><c-w>
  map * /<c-r><c-w><cr>

  " Search n replace
  nnoremap srw :%s/<c-r><c-w>//g<left><left>
  nmap sw /<c-r><c-w>

  " change inside something
  nnoremap cib ci(
  nnoremap cicb ci{
  nnoremap cisb ci[
  " TODO: spitze klammern

  " delete inside something
  nnoremap dib di(
  nnoremap dicb di{
  nnoremap disb di[
  " TODO: spitze klammern

  " visual inside something
  nnoremap vib vi(
  nnoremap vicb vi{
  nnoremap visb vi[
  " TODO: spitze klammern

  nnoremap tr :NERDTreeToggle<CR>

  " SUCHE
  nmap . /

  " Movement
  nnoremap mm m
  " move
  nnoremap m '
  " move to definition
  nnoremap mtd :cs find g <c-r>=expand("<cword>")<cr><cr>:cw<CR><CR>
  " move to appearence
  nnoremap mta :cs find s <c-r>=expand("<cword>")<cr><cr>:cw<CR><CR>
  " move to caller
  nnoremap mtc :cs find c <c-r>=expand("<cword>")<cr><cr>:cw<CR><CR>
  " move to functions (called by this function)
  nnoremap mtf :cs find d <c-r>=expand("<cword>")<cr><cr>:cw<CR><CR>

  " move (to matched) bracket
  nnoremap mb %

  " repeat schneller
  nnoremap <space> .

  " Setzen der Farben für hellere Umgebungen
  nnoremap <F3> :set background=light<CR>:colorscheme solarized<CR>
  nnoremap <F4> :set background=dark<CR>:colorscheme molokai<CR>

  " Compilieren
  nnoremap <leader>b ma:make<CR>:botright copen<CR><C-w>w

  " vimrc neu laden
  nnoremap <F12> :so $MYVIMRC<CR>
  " cscope neu laden
  nnoremap <silent> <F11> :cs kill -1<CR>:!cscope -Rb<CR>:cs add cscope.out<CR>

  " Codezeilen und Bereiche auskommentieren
  nmap <A-q> ,c 
  vmap <A-q> ,c 

  if has("win32") || has('win64')
    if has("cscope")
      set cscopequickfix=s-,d-,c-,g-
      set csto=0
      if filereadable("cscope.out")
          cs add cscope.out
      elseif $CSCOPE_DB != ""
          cs add $CSCOPE_DB
      endif
    endif
  endif

""""""""""""""""""""""""""""" AUTOCOMMANDS """""""""""""""""""""""""""""""""""
  " header in c files
  autocmd bufnewfile *.c so ~/vimfiles/cfheader.txt
  autocmd bufnewfile *.c exe "1," . 6 . "g/File Name:.*/s//File Name: " .expand("%:t")
  autocmd bufnewfile *.c exe "1," . 6 . "g/Creation Date:.*/s//Creation Date: " .strftime("%d-%m-%Y")

  autocmd bufnewfile *.cpp so ~/vimfiles/cfheader.txt
  autocmd bufnewfile *.cpp exe "1," . 6 . "g/File Name:.*/s//File Name: " .expand("%:t")
  autocmd bufnewfile *.cpp exe "1," . 6 . "g/Creation Date:.*/s//Creation Date: " .strftime("%d-%m-%Y")

  autocmd bufnewfile *.h so ~/vimfiles/cfheader.txt
  autocmd bufnewfile *.h exe "1," . 6 . "g/File Name:.*/s//File Name: " .expand("%:t")
  autocmd bufnewfile *.h exe "1," . 6 . "g/Creation Date:.*/s//Creation Date: " .strftime("%d-%m-%Y")
""""""""""""""""""""""""""""" ABBRIVIATIONS """"""""""""""""""""""""""""""""""
  cnoreabbrev <expr> csa
      \ ((getcmdtype() == ':' && getcmdpos() <= 4)? 'cs add'  : 'csa')
  cnoreabbrev <expr> csf
      \ ((getcmdtype() == ':' && getcmdpos() <= 4)? 'cs find' : 'csf')
  cnoreabbrev <expr> csk
      \ ((getcmdtype() == ':' && getcmdpos() <= 4)? 'cs kill' : 'csk')
  cnoreabbrev <expr> csr
      \ ((getcmdtype() == ':' && getcmdpos() <= 4)? 'cs reset' : 'csr')
  cnoreabbrev <expr> css
      \ ((getcmdtype() == ':' && getcmdpos() <= 4)? 'cs show' : 'css')
  cnoreabbrev <expr> csh
      \ ((getcmdtype() == ':' && getcmdpos() <= 4)? 'cs help' : 'csh')
