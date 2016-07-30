"TODO: - substitute command?

if has("gui_running")
  set guioptions-=m  " entfernt menu bar
  set guioptions-=T  " entfernt toolbar
  set guioptions-=r  " entfernt right-hand scroll bar
  set guioptions-=L  " entfernt left-hand scroll bar
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

" """"""""""""""""" Kann sich selbst updaten, VimPluginManager
" Der PluginManager selbst
Plugin 'gmarik/Vundle.vim'

" Startbildschirm
Plugin 'mhinz/vim-startify'

" latex
Plugin 'latex-box-team/latex-box'

" Alles rundum Klammerungen
Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-surround'

" Damit vim-surround mit repeat funktioniert - mehr nicht
Plugin 'tpope/vim-repeat'

" Vervollsändigt das aktelle getippte Wort mit Tab zu etwas was bereits vorkam
Plugin 'ervandew/supertab'

" Colorschemes
Plugin 'rakr/vim-two-firewatch'
Plugin 'tomasr/molokai'

" Ermöglicht das tauschen von beliebigen Textobjekten
Plugin 'tommcdo/vim-exchange'

" Auskommentieren
Plugin 'tomtom/tcomment_vim'

" Fuzzyfinder für Dateien und Tags
Plugin 'kien/ctrlp.vim'

" Tagbar
Plugin 'majutsushi/tagbar'

" Snippets
Plugin 'SirVer/ultisnips'

" Passives Plugin sorgt für richtiges einrücken beim kopieren und einfügen
Plugin 'sickill/vim-pasta'

" Erweitert vim um weitere Textobjekte
Plugin 'kana/vim-textobj-user'
Plugin 'kana/vim-textobj-line'
Plugin 'kana/vim-textobj-indent'
Plugin 'kana/vim-textobj-entire'
Plugin 'julian/vim-textobj-variable-segment'
Plugin 'sgur/vim-textobj-parameter'
Plugin 'glts/vim-textobj-comment'

" Hübschere Statusleiste mit mehr Informationen
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Ermöglicht ein Projektspezifisches vimrc einfach 'lvimrc' nennen
Plugin 'embear/vim-localvimrc'

call vundle#end()

filetype plugin indent on
""""""""""""""""""""
" PLUGIN Einstellungen und Keybindings
let g:SuperTabCompleteCase = 'ignore'

let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsUsePythonVersion = 2

" Blockt sonst das tetobject comment
let g:tcommentTextObjectInlineComment = ''

let g:molokai_original = 0

let g:localvimrc_sandbox = 0
let g:localvimrc_ask = 0
let g:localvimrc_name = "lvimrc"

let delimitMate_expand_cr = 1

nmap <F5> :SSave<CR>
nmap <F6> :SLoad<CR>
nmap <F8> :TagbarToggle<CR>

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
set splitright
set splitbelow
set virtualedit=block
set foldenable
set foldlevel=99

let mapleader = ","

" SUCHE
set nohlsearch
set smartcase
set incsearch
set ignorecase

" OBERFLAECHE
set scrolloff=5
set wildmenu
set wildignore=*.o
set ruler
set relativenumber
set number
set cmdheight=1
set laststatus=2
set cursorline
set t_Co=256

" STATUSBAR
" set statusline-=%t
""""""""""""""""""""" FARBEN UND FORMATIERUNGEN """"""""""""""""""""""""""""""
set background=dark
colorscheme molokai
let g:two_firewatch_italics=1
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
set tabstop=2
set shiftwidth=2
set softtabstop=2
set linebreak
set tw=500 " Zeilenumbruch nach 500 Zeichen
set autoindent
set smartindent
set wrap
set formatoptions+=v
set formatoptions+=l

" MAPING " MAPING " MAPPING " MAPPING " MAPPING " MAPPING " MAPPING "
" ===================================================================
nnoremap <down> :cn<cr>
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap <up> :cp<cr>

vnoremap <down> <Nop>
vnoremap <left> <Nop>
vnoremap <right> <Nop>
vnoremap <up> <Nop>

inoremap <down> <Nop>
inoremap <left> <Nop>
inoremap <right> <Nop>
inoremap <up> <Nop>

inoremap <A-l> <esc>la
inoremap <A-n> <esc>la,<space>

" ------------
nnoremap J 5j
nnoremap K 5k

vnoremap J 5j
vnoremap K 5k

onoremap J 5j
onoremap K 5k


" ------------ copy and paste ala ctrl-c ctrl-v
nnoremap <c-v> :put +<cr>
vnoremap <c-c> "+y<cr>
inoremap <c-v> <c-r>+


" ------------ Verhindert capslock durch shift backspace
inoremap <S-BS> <BS>


" ------------ Repeat makro in register q
nnoremap Q @q


" ------------ Schnelles speichern und schliessen von Dokumenten
nnoremap <leader>w :w!<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader><leader>q :q!<CR>
nnoremap ! :w<CR>:!


" ------------ Navigation innerhalb von Splitts und tabs
nnoremap gk <C-w>k
nnoremap gj <C-w>j
nnoremap gh <C-w>h
nnoremap gl <c-w>l

nnoremap gK <C-w>K
nnoremap gJ <C-w>J
nnoremap gH <C-w>H
nnoremap gL <c-w>L

nnoremap gt <Nop>
nnoremap gT <Nop>

nnoremap <A-l> gt
nnoremap <A-h> gT


" ------------ Redo!
nnoremap U <c-R>


" ------------ Handlicherer visual mode
nnoremap V <C-v>
nnoremap vv <S-v>


" ------------ Plugin mappings
nnoremap <leader>p :CtrlP<cr>
nnoremap <leader>. :CtrlPTag<cr>


" ------------ misc
nnoremap # /<c-r><c-w><CR>N
nnoremap * <c-]>

nnoremap <A-k> <c-u>
nnoremap <A-j> <c-d>

nnoremap + ~

nmap <space> .
nnoremap ß /

nnoremap ´ `
onoremap ´ `
vnoremap ´ `

nnoremap <F1> :set background=dark<cr>
nnoremap <F2> :set background=light<cr>

compiler msvc

function! Build()
  set makeprg=build.bat
  silent make
  botright copen
endfunction

nnoremap <A-b> :call Build()<cr><c-w>k
nnoremap <A-n> :cn<cr>
nnoremap <A-p> :cp<cr>

function! CreateNewlineBelow()
  normal! mmo
  normal! `m
endfunction

if has("win32") || has('win64')
  set wildignore+=*.git,*.hg,*.svn,*.dll,*.pdb,*.exe,*.obj,*.o,*.a,*.jpg,*.png,*.tga,*.sln,*.opensdf,*.sdf,*.exp,*.lib
else
  set wildignore+=*/.git/*,*/.hg/*,*/.svn/*        " Linux/MacOSX
endif

""""""""""""""""""""""""""""" AUTOCOMMANDS """""""""""""""""""""""""""""""""""
" Keywörter in den Kommentaren
autocmd Syntax * syntax keyword ImportantNote containedin=.*Comment.* contained IMPORTANT
autocmd Syntax * syntax keyword StudyNote containedin=.*Comment.* contained STUDY
autocmd Syntax * syntax keyword NoteNote containedin=.*Comment.* contained NOTE
autocmd Syntax * syntax keyword TodoNote containedin=.*Comment.* contained TODO
hi ImportantNote term=bold ctermfg=14 gui=bold guifg=Yellow
hi StudyNote term=bold ctermfg=14 gui=bold guifg=#b58900
hi NoteNote term=bold ctermfg=14 gui=bold guifg=#719e07
hi TodoNote term=bold ctermfg=14 gui=bold guifg=#dc322f
