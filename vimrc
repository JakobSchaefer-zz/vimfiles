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

""""""""""""""""""""
" VUNDLE
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'bling/vim-airline'
Plugin 'tomasr/molokai'

call vundle#end()

filetype plugin indent on
""""""""""""""""""""
" BASIS
set history=1000
set autoread
set backspace=eol,start,indent
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1
set lines=50
set columns=125
set updatetime=750

let mapleader = ","

" SUCHE
set hlsearch
set smartcase
set incsearch

" OBERFLAECHE
set scrolloff=10
set wildmenu
set wildignore=*.o
set ruler
set number
set cmdheight=2
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
inoremap <left> <Nop>
inoremap <right> <Nop>
inoremap <up> <Nop>
nmap <down> <Nop>
noremap <left> <Nop>
noremap <right> <Nop>
nmap <up> <Nop>

"""""""""""""""""""" INPUTMODUS
" Testweise ausprobieren für Umlaute
" Kuerzel
imap ae ä
imap oe ö
imap ue ü

" Klammerpaare
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap < <><ESC>i

" Brauche ich um nach den Klammerungen weiter zu tippen
imap <leader>l <ESC>la

" Etwas bessere Navigation mit im Input-Modus
imap <leader>O <ESC>O
imap <leader>o <ESC>o
imap <leader>A <ESC>A
imap <leader>I <ESC>I

" Ermöglicht es bequem Leerzeilen einzufügen
imap <leader>k <ESC>O<ESC>ji
imap <leader>j <ESC>o<ESC>ki

" BEASTMODE ON
imap jk <ESC>

"""""""""""""""""""" NORMALMODE
" Ermöglicht es bequem Leerzeilen einzufügen
map <leader>k <ESC>O<ESC>j
map <leader>j <ESC>o<ESC>k

" Bessert kleine Flüchtigkeitsfehler aus
nmap :Q :q
nmap :W :w

" cw um ein ganzes Wort auszubessern
nnoremap cw bcw

" Schnelles speichern und schliessen von Dokumenten
nmap <leader>w :w!<CR>
nmap <leader>q :q<CR>
nmap <leader><leader>q :q!<CR>
nmap ! :w<CR>:!

" Navigation innerhalb von Splitts
nmap gk <C-w>k
nmap gj <C-w>j
nmap gh <C-w>h
nmap gl <c-w>l

" Navigation innerhalb von Taps
nmap <C-l> gt
nmap <C-h> gT>

" Easymotion etwas schneller daruch
nmap <leader>f <leader><leader>f
nmap <leader>F <leader><leader>F

" Navigation überspringt nun keine Zeilenumbrüche
nnoremap k gk
nnoremap j gj

" Intuitivere Navigation mit shift
nmap J }
nmap K {
nnoremap L E
nnoremap H B

" SUCHE
nmap <space> /
nmap <leader><space> :noh<CR>

" MAKE UND GIT!!
nmap <leader>m :w!<CR>:!make

nmap <F5> :!build<CR>

nmap <leader>ad :Gwrite<CR>
nmap <leader>re :Gread<CR>
nmap <leader>co :Gcommit<CR>
nmap <leader>pu :Gpush<CR>
nmap <leader>st :Gstatus<CR>
nmap <leader>di :Gvdiff<CR>

" Kleine Abkürzungen
iabbr cfhead /*<CR>File: <C-R>=expand("%:t")<CR><CR>Date: <C-R>=strftime("%c")<CR><CR>Creator: Jakob Schäfer<CR>Notice: (C) Copyright 2015 by Jakob Schäfer, Inc. All Rights Reserved.<CR>/<CR>

" vimrc autoreload
augroup reload_vimrc
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END
