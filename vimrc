""""""""""""""""""""
" VUNDLE
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
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
vnoremap <down> <Nop>
vnoremap <left> <Nop>
vnoremap <right> <Nop>
vnoremap <up> <Nop>

"""""""""""""""""""" INPUTMODUS
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i
imap <leader>{ {}<ESC>i

inoremap <down> <Nop>
inoremap <left> <Nop>
inoremap <right> <Nop>
inoremap <up> <Nop>

imap <leader>l <ESC>la
imap <leader>k <ESC>O<ESC>ji
imap <leader>j <ESC>o<ESC>ki

imap <leader>O <ESC>O
imap <leader>o <ESC>o
imap <leader>A <ESC>A
imap <leader>I <ESC>I

"""""""""""""""""""" NORMALMODE
nmap tn :tabnew<CR>
nmap tc :tabclose<CR>

noremap <down> ddp
noremap <left> <Nop>
noremap <right> <Nop>
noremap <up> ddkP

nmap :Q :q
nmap :W :w

nnoremap cw bcw

nmap <leader>w :w!<CR>
nmap <leader>q :q<CR>
nmap ! :w<CR>:!

nmap gk <C-w>k
nmap gj <C-w>j
nmap gh <C-w>h
nmap gl <c-w>l

nmap <C-l> gt
nmap <C-h> gT

nmap <leader>f <leader><leader>f
nmap <leader>F <leader><leader>F

nnoremap k gk
nnoremap j gj

nmap J 5j
nmap K 5k

" SUCHE
nmap <space> /
nmap <leader><space> :noh<CR>

nmap <C-n> :NERDTreeToggle<CR>

" MAKE!!
nmap <leader>m :w!<CR>:!make 
