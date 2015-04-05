"""""""""""""""""""""""""""""""""
" gvim settings
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
""""""""""""""""""""
" VUNDLE
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

" FARBEN UND FORMATIERUNGEN
set background=dark
colorscheme molokai
set encoding=utf8
set ffs=unix,dos,mac
set listchars=eol:¬,tab:»·,trail:·
set list
hi MatchParen cterm=bold ctermbg=none ctermfg=blue
match Title /TODO/

" SICHERUNGEN
set nobackup
set nowb
set noswapfile

" TABS UND ZEILENUMBRUECHE
set smarttab
set expandtab
set shiftwidth=2
set tabstop=2
set linebreak
set tw=500 " Zeilenumbruch nach 500 Zeichen
set autoindent
set smartindent
set wrap

"""""""""""""""""""" VISUALMODUS
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

"""""""""""""""""""" INPUTMODUS
" BEASTMODE ON!!!!
inoremap jk <ESC>
inoremap jK <ESC>

"""""""""""""""""""" NORMALMODE
" Makros erstmal deaktiviert! Nervt unglaublich
nnoremap q za

" Schnelles speichern und schliessen von Dokumenten
nnoremap <leader>w :w!<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader><leader>q :q!<CR>
nnoremap ! :w<CR>:!

" Navigation innerhalb von Splitts
nnoremap gk <C-w>k
nnoremap gj <C-w>j
nnoremap gh <C-w>h
nnoremap gl <c-w>l

nnoremap gt <Nop>
nnoremap gT <Nop>

" Navigation überspringt nun keine Zeilenumbrüche
nnoremap k gk
nnoremap j gj

" Intuitivere Navigation mit shift
nnoremap J 5j
nnoremap K 5k
nnoremap H gT
nnoremap L gt

" Navigation im viusal mode
vnoremap J 5j
vnoremap K 5k

" Handlicherer visual mode
nnoremap vb <C-v>
nnoremap vr <S-v>

" Plugin settings and mappings
map f <Plug>(easymotion-s)
map / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-sn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

nnoremap tr :NERDTreeToggle<CR>

" SUCHE
nmap . /

nnoremap <space> .

" Setzen der Farben für hellere Umgebungen
nnoremap <F3> :set background=light<CR>:colorscheme solarized<CR>
nnoremap <F4> :set background=dark<CR>:colorscheme molokai<CR>

" Compilieren
nnoremap <leader>b ma:make<CR>:botright copen<CR><C-w>w

" vimrc neu laden
nnoremap <F12> :so $MYVIMRC<CR>

" Codezeilen und Bereiche auskommentieren
nmap <A-q> ,c 
vmap <A-q> ,c 

if has("win32") || has('win64')
  let g:vimshell_prompt = $USERNAME."> "
else
  let g:vimshell_prompt = $USER."> "
endif

" Programmierung
inoremap <leader>l <ESC>A
inoremap <leader>k <ESC>kA
inoremap <leader>j <ESC>jA
inoremap <leader>; <ESC>A;
inoremap <leader>cb <ESC>A<space>{}<ESC>i<CR><ESC>O

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
