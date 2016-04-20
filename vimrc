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
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'ervandew/supertab'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'tommcdo/vim-exchange'
Plugin 'tomtom/tcomment_vim'
Plugin 'kien/ctrlp.vim'
Plugin 'SirVer/ultisnips'
Plugin 'sickill/vim-pasta'
Plugin 'chriskempson/base16-vim'

Plugin 'kana/vim-textobj-user'
Plugin 'kana/vim-textobj-line'
Plugin 'kana/vim-textobj-indent'
Plugin 'kana/vim-textobj-entire'
Plugin 'julian/vim-textobj-variable-segment'
Plugin 'sgur/vim-textobj-parameter'
Plugin 'glts/vim-textobj-comment'

Plugin 'Raimondi/delimitMate'
Plugin 'bling/vim-airline'

Plugin 'embear/vim-localvimrc'

call vundle#end()

filetype plugin indent on
""""""""""""""""""""
" PLUGIN Einstellungen und Keybindings
let g:SuperTabCompleteCase = 'ignore'

let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsUsePythonVersion = 2

" Blockt sonst das tetobject comment
let g:tcommentTextObjectInlineComment = ''

let g:molokai_original = 1

let g:localvimrc_sandbox = 0
let g:localvimrc_ask = 0
let g:localvimrc_name = "lvimrc"

let delimitMate_jump_expansion = 1
let delimitMate_expand_cr = 1

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
set tabstop=4
set shiftwidth=4
set softtabstop=4
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
nnoremap <c-c> V:y+<cr>
nnoremap <c-v> :put +<cr>

vnoremap <c-c> :y+<cr>
vnoremap <c-v> :put +<cr>

inoremap <c-v> <c-r>*


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

nnoremap <space> .

nnoremap ´ `
onoremap ´ `
vnoremap ´ `

nnoremap <F1> :set background=dark<cr>
nnoremap <F2> :set background=light<cr>

nnoremap <F11> :LocalVimRC<cr>
nnoremap <F12> :so $MYVIMRC<cr>

nnoremap <A-b> :silent make<cr>
nnoremap <A-c> :copen<cr>

function! CreateNewlineBelow()
  normal! mmo
  normal! `m
endfunction

nnoremap <a-o> :call CreateNewlineBelow()<cr>

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
