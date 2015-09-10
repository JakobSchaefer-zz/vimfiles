if has("gui_running")
  set guioptions-=m  "entfernt menu bar
  set guioptions-=T  "entfernt toolbar
  set guioptions-=r  "entfernt right-hand scroll bar
  set guioptions-=L  "entfernt left-hand scroll bar
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

""""""""""""""""" Kann sich selbst updaten, VimPluginManager
Plugin 'gmarik/Vundle.vim'

""""""""""""""""" Schnelles und schöneres Suchen
Plugin 'Lokaltog/vim-easymotion'
" find and replace
nnoremap fsw :%s/<c-r><c-w>//g<left><left>
" find inside word
nmap fiw /<c-r><c-w><CR>

""""""""""""""""" Automatisches einfügen der schliessenden Klammern
Plugin 'Raimondi/delimitMate'

""""""""""""""""" Schnelles ändern von Klammerungen
" change surrounding:   cs{akutelleklammerung}{neueklammerung}
" yank surrounding:     ys{motion}{klammerung}
" delete surrounding:   ds{klammerung}
Plugin 'tpope/vim-surround'

""""""""""""""""" super schnell und unkompliziert
Plugin 'ervandew/supertab'

""""""""""""""""" Besserer Filetree
Plugin 'scrooloose/nerdtree'
nnoremap tr :NERDTreeToggle<CR>

""""""""""""""""" Nur zum kommentieren einzelner zeilen
Plugin 'scrooloose/nerdcommenter'
" Auskommentieren toogle: Alt-q
nmap <A-q> ,c 
vmap <A-q> ,c 

""""""""""""""""" Helleres farbschema
Plugin 'altercation/vim-colors-solarized'

""""""""""""""""" cx{motion} und nochmal cx{motion} bzw . tauscht die Bereiche aus
Plugin 'tommcdo/vim-exchange'

""""""""""""""""" Fuzzy finder
Plugin 'kien/ctrlp.vim'

""""""""""""""""" für kleinere dinge super nützlich
Plugin 'SirVer/ultisnips'

call vundle#end()

filetype plugin indent on
""""""""""""""""""""
compiler msvc
set makeprg=build.bat

" Space after //
let g:NERDSpaceDelims = 1

" nerdtree on speed
let g:NERDTreeQuitOnOpen = 1

" i am a lazy shifter
let g:EasyMotion_smartcase = 1
let g:EasyMotion_enter_jump_first = 1
let g:EasyMotion_keys = 'asdghklqwertyuiopzxcvbnmfj,'

let g:SuperTabCompleteCase = 'ignore'

let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" BASICS
set history=1000
set autoread
set backspace=eol,start,indent
set noerrorbells
set visualbell
set t_vb=
set tm=500

set lines=50
set columns=120
set updatetime=750
set splitbelow
set splitright
set virtualedit=block
set foldenable
set foldlevel=99

let mapleader = ","

" SUCHE
set nohlsearch
set smartcase
set incsearch

" OBERFLAECHE
set scrolloff=5
set wildmenu
set wildignore=*.o
set ruler
set number
set cmdheight=1
set laststatus=1
set cursorline
set t_Co=256

" STATUSBAR
" set statusline-=%t
""""""""""""""""""""" FARBEN UND FORMATIERUNGEN """"""""""""""""""""""""""""""
set background=dark
colorscheme solarized
set encoding=utf8
set ffs=unix,dos,mac
set listchars=eol:¬,tab:»·,trail:·
set list
hi MatchParen cterm=bold ctermbg=none ctermfg=blue
syntax enable

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
vnoremap <A-j> }
vnoremap <A-k> {

" nützlich zum einrücken mehrerer zeilen
vnoremap <tab> >
vnoremap <s-tab> <

""""""""""""""""""""""""""""" INSERTMODE """""""""""""""""""""""""""""""""""""
inoremap <down> <Nop>
inoremap <left> <Nop>
inoremap <right> <Nop>
inoremap <up> <Nop>

inoremap <a-h> <left>
inoremap <a-j> <down>
inoremap <a-k> <up>
inoremap <a-l> <right>

" (insert) curly brackets
inoremap <leader>cb <ESC>A<space>{}<ESC>i<CR><ESC>O

" (insert) (semikolon)
inoremap <leader><leader> <ESC>A;

" prevent to switch in normalmode through shift backspace == Caps lock
inoremap <S-BS> <BS>

" einfügen vim clipboard
inoremap <c-v> <c-R>*

""""""""""""""""""""""""""""" NORMALMODE """""""""""""""""""""""""""""""""""""
nnoremap <down> ddp
nnoremap <left> <Nop>
nnoremap <right> J
nnoremap <up> ddkP

" Makros erstmal deaktiviert! Folding!
nnoremap q za
nnoremap qr zR
nnoremap qm zM
nnoremap Q <Nop>

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

nmap / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-sn)
nmap  n <Plug>(easymotion-next)
nmap  N <Plug>(easymotion-prev)
nnoremap # <Nop>
nnoremap * <Nop>

" SUCHE
nmap . /

" repeat schneller
nnoremap <space> .


" Setzen der Farben für hellere Umgebungen
nnoremap <F1> :compiler msvc<CR>:set makeprg=build.bat<CR>
nnoremap <F2> :compiler gcc<CR>:set makeprg=make<CR>
nnoremap <F3> :set background=dark<CR>
nnoremap <F4> :set background=light<CR>

" vimrc neu laden
nnoremap <F12> :so $MYVIMRC<CR>

" Compilieren
nnoremap <A-b> :make<CR>:botright copen<CR><C-w>w
nnoremap <A-m> :!make 

if has("win32") || has('win64')
  set wildignore+=*.git,*.hg,*.svn,*.dll,*.pdb,*.exe,*.obj,*.o,*.a,*.jpg,*.png,*.tga
else
  set wildignore+=*/.git/*,*/.hg/*,*/.svn/*        " Linux/MacOSX
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
  elseif match(thisline, '^}') >= 0
    return "<1"
  else
    return "="
  endif
endfunction

function! FoldMarkerText()
  let foldsize = (v:foldend-v:foldstart)
  return getline(v:foldstart).' ('.foldsize.' Zeilen) '
endfunction

autocmd FileType cpp setlocal foldmethod=expr foldexpr=FoldMarker() foldtext=FoldMarkerText()

" Keywörter in den Kommentaren
autocmd Syntax * syntax keyword ImportantNote containedin=.*Comment.* contained IMPORTANT
autocmd Syntax * syntax keyword StudyNote containedin=.*Comment.* contained STUDY
autocmd Syntax * syntax keyword NoteNote containedin=.*Comment.* contained NOTE
autocmd Syntax * syntax keyword TodoNote containedin=.*Comment.* contained TODO
hi ImportantNote term=bold ctermfg=14 gui=bold guifg=Yellow
hi StudyNote term=bold ctermfg=14 gui=bold guifg=#b58900
hi NoteNote term=bold ctermfg=14 gui=bold guifg=#719e07
hi TodoNote term=bold ctermfg=14 gui=bold guifg=#dc322f
