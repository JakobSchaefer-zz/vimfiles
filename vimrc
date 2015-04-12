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
" Main colorshemeeeeemeee
Plugin 'tommcdo/vim-exchange'

call vundle#end()

filetype plugin indent on
""""""""""""""""""""
compiler msvc
set makeprg=build.bat

let g:NERDSpaceDelims = 1

let g:NERDTreeQuitOnOpen = 1

let g:EasyMotion_smartcase = 1
let g:EasyMotion_enter_jump_first = 1
let g:EasyMotion_keys = 'asdghklqwertyuiopzxcvbnmfj,'

let g:UltiSnipsExpandTrigger = "<leader><tab>"
let g:UltiSnipsJumpForwardTrigger = "<leader><tab>"
let g:UltiSnipsJumpBackwardTrigger = "<leader><leader><tab>"

let g:SuperTabCompleteCase = 'ignore'

" BASICS
set history=1000
set autoread
set backspace=eol,start,indent
set noerrorbells
set visualbell
set t_vb=
set tm=500

set lines=50
set columns=80
set updatetime=750
set splitbelow
set splitright
set virtualedit=block
set hidden
set nofoldenable

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
colorscheme solarized
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
set nolist
set formatoptions+=v
set formatoptions+=l

" MAPING " MAPING " MAPPING " MAPPING " MAPPING " MAPPING " MAPPING "
""""""""""""""""""""""""""""" VISUALMODE """""""""""""""""""""""""""""""""""""
" Deaktiviert die Pfeiltasten
vnoremap <down> <Nop>
vnoremap <left> <Nop>
vnoremap <right> <Nop>
vnoremap <up> <Nop>

" Navigation im viusal mode
vnoremap J 5j
vnoremap K 5k
vnoremap H ^
vnoremap L $

" nützlich zum einrücken mehrerer zeilen
vnoremap <tab> >
vnoremap <s-tab> <

vnoremap mmb %

""""""""""""""""""""""""""""" INSERTMODE """""""""""""""""""""""""""""""""""""
inoremap <down> <Nop>
inoremap <left> <Nop>
inoremap <right> <Nop>
inoremap <up> <Nop>

inoremap <A-h> <left>
inoremap <A-j> <down>
inoremap <A-k> <up>
inoremap <A-l> <right>

inoremap <S-BS> <ESC>la<BS>

" (insert) curly brackets
inoremap <leader>cb <ESC>A<space>{}<ESC>i<CR><ESC>O

" (insert) (semikolon)
inoremap <leader><leader> <ESC>A;

""""""""""""""""""""""""""""" NORMALMODE """""""""""""""""""""""""""""""""""""
" Move in quickfix window
nnoremap <down> :cn<CR>
nnoremap <left> <Nop>
nnoremap <right> <Nop>
nnoremap <up> :cp<CR>

" Makros erstmal deaktiviert! Folding!
nnoremap q za

" Passende Einrückung
nnoremap = =l

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

" Intuitivere Navigation mit shift und alt
nnoremap J 5j
nnoremap K 5k
nnoremap H ^
nnoremap L $
nnoremap <A-l> gt
nnoremap <A-h> gT
nnoremap <A-j> }
nnoremap <A-k> {

" Redo!
nnoremap U <c-R>

"Caps ändern
nnoremap + ~
nnoremap ~ <Nop>

" Handlicherer visual mode
" visual block
nnoremap V <C-v>
" visual row
nnoremap vv <S-v>

" Tab zum Einrücken
nnoremap <tab> >>
nnoremap <s-tab> <<

" Plugin settings and mappings
" find key
nnoremap f <Nop>
nmap fj <Plug>(easymotion-f)
nmap fl <Plug>(easymotion-fl)
nmap fk <Plug>(easymotion-F)
nmap fh <Plug>(easymotion-Fl)
nmap fb <Plug>(easymotion-b)
nmap fw <Plug>(easymotion-w)
nmap fe <Plug>(easymotion-e)
nmap fge <Plug>(easymotion-ge)
nmap fB <Plug>(easymotion-B)
nmap fW <Plug>(easymotion-W)
nmap fE <Plug>(easymotion-E)
nmap fgE <Plug>(easymotion-gE)

nmap / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-sn)
nmap  n <Plug>(easymotion-next)
nmap  N <Plug>(easymotion-prev)
nnoremap # <Nop>
nnoremap * <Nop>

" find n replace
nnoremap frw :%s/<c-r><c-w>//g<left><left>
"find inside word
nmap fiw /<c-r><c-w>

" Substitude hole line
nnoremap ss Vp

" (do something) inside/till parenthesis
nnoremap dip di(
nnoremap cip ci(
nnoremap vip vi(
nnoremap yip yi(
nnoremap sip vi(p
nmap cxip cxi(

nnoremap dtp dt)
nnoremap dTp dT(
nnoremap ctp ct)
nnoremap cTp cT(
nnoremap vtp vt)
nnoremap vTp vT(
nnoremap ytp yt)
nnoremap yTp yT(

" (do something) inside/till curly brackets
nnoremap dicb di{
nnoremap cicb ci{
nnoremap vicb vi{
nnoremap yicb yi{
nnoremap sicb vi{p
nmap cxicb cxi{

nnoremap dtcb dt}
nnoremap dTcb dT{
nnoremap ctcb ct}
nnoremap cTcb cT{
nnoremap vtcb vt}
nnoremap vTcb vT{
nnoremap ytcb yt{
nnoremap yTcb yT}

" (do something) inside/till square brackets
nnoremap disb di[
nnoremap cisb ci[
nnoremap visb vi[
nnoremap yisb yi[
nnoremap sisb vi[p
nmap cxib cxi[

nnoremap dtsb dt]
nnoremap dTsb dT[
nnoremap ctsb ct]
nnoremap cTsb cT[
nnoremap vtsb vt]
nnoremap vTsb vT[
nnoremap ytsb yt]
nnoremap yTsb yT[

" (do something) inside/till angle brackets
nnoremap diab di<
nnoremap ciab ci<
nnoremap viab vi<
nnoremap yiab yi<
nnoremap siab vi<p
nmap cxiab cxi<

nnoremap dtab dt>
nnoremap dTab dT<
nnoremap ctab ct>
nnoremap cTab cT<
nnoremap vtab vt>
nnoremap vTab vT<
nnoremap ytab yt>
nnoremap yTab yT<

" (do something) inside/till quotes
nnoremap diq di"
nnoremap ciq ci"
nnoremap viq vi"
nnoremap yiq yi"
nnoremap siq vi"p
nmap cxiq cxi"

nnoremap dtq dt"
nnoremap dTq dT"
nnoremap ctq ct"
nnoremap cTq cT"
nnoremap vtq vt"
nnoremap vTq vT"
nnoremap ytq yt"
nnoremap yTq yT"

nnoremap tr :NERDTreeToggle<CR>

" SUCHE
nmap . /

" (insert) mark
nnoremap <leader>m m
" move
nnoremap m '
" move toggle
nnoremap ml ''
" move to matched bracket
nnoremap mmb %
" move top
nnoremap mt zt
" move down
nnoremap mb zb
" move middle
nnoremap mm zz

" need to call cscope before
" cscope neu laden
nnoremap <silent> <F11> :cs kill -1<CR>:!cscope -Rb<CR>:cs add cscope.out<CR>
" move to definition
nnoremap mtd :cs find g <c-r>=expand("<cword>")<cr><cr>:copen<CR><CR>
" move to appearence
nnoremap mta :cs find s <c-r>=expand("<cword>")<cr><cr>:copen<CR><CR>
" move to caller
nnoremap mtc :cs find c <c-r>=expand("<cword>")<cr><cr>:copen<CR><CR>
" move to functions (called by this function)
nnoremap mtf :cs find d <c-r>=expand("<cword>")<cr><cr>:copen<CR><CR>


" repeat schneller
nnoremap <space> .

" Setzen der Farben für hellere Umgebungen
nnoremap <F1> :compiler msvc<CR>:set makeprg=build.bat<CR>
nnoremap <F2> :compiler gcc<CR>:set makeprg=make<CR>
nnoremap <F3> :set background=dark<CR>
nnoremap <F4> :set background=light<CR>


" vimrc neu laden
nnoremap <F12> :so $MYVIMRC<CR>

" Codezeilen und Bereiche auskommentieren
nmap <A-q> ,c 
vmap <A-q> ,c 

" Compilieren
nnoremap <A-b> :make<CR>:botright copen<CR><C-w>w
nnoremap <A-m> :!make 

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

function! FoldMarker()
  let thisline = getline(v:lnum)
  if match(thisline, '^[a-zA-Z]') >= 0
    if match(thisline, '[{,]$') >= 0
      return ">1"
    endif
  else
    return "="
  endif
endfunction

function! FoldMarkerText()
  let foldsize = (v:foldend-v:foldstart)
  return getline(v:foldstart).' ('.foldsize.' Zeilen) '
endfunction

autocmd FileType cpp setlocal foldmethod=expr foldexpr=FoldMarker() foldtext=FoldMarkerText()

""""""""""""""""""""""""""""" ABBRIVIATIONS """"""""""""""""""""""""""""""""""
