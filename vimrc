""""""""""""""""""""
" VUNDLE
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Plugin 'gmarik/Vundle.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/nerdtree'
Plugin 'msanders/snipmate.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()

filetype plugin indent on
""""""""""""""""""""

let g:airline_powerline_fonts = 1

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
noremap <down> <Nop>
noremap <left> <Nop>
noremap <right> <Nop>
noremap <up> <Nop>

"""""""""""""""""""" INPUTMODUS
" Testweise ausprobieren für Umlaute
" Kuerzel
imap ae ä
imap oe ö
imap ue ü

" Klammerpaare
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i
imap <leader>{ {}<ESC>i
imap <leader>< <><ESC>i

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
nmap J 5j
nmap K 5k
nmap L e
nmap H b

" SUCHE
nmap <space> /
nmap <leader><space> :noh<CR>

nmap <C-n> :NERDTreeToggle<CR>

" MAKE UND GIT!!
nmap <leader>m :w!<CR>:!make 
nmap <leader>add :Gwrite<CR>
nmap <leader>co :Gcommit<CR>
nmap <leader>push :Gpush<CR>

" Kleine Abkürzungen
iabbr cfhead /*<CR>File:<CR>Date:<CR>Creator: Jakob Schäfer<CR>Notice: (C) Copyright 2015 by Jakob Schäfer, Inc. All Rights Reserved.<CR>/<CR>

" vimrc autoreload
augroup reload_vimrc
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END
