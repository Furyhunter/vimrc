set nocompatible

filetype off
set rtp+=$HOME/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'rust-lang/rust.vim'
Plugin 'bling/vim-airline'
if has("gui_running")
    Plugin 'Valloric/YouCompleteMe'
endif
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'cespare/vim-toml'
"Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-shell'
call vundle#end()

set shiftwidth=4 tabstop=8 softtabstop=4

filetype plugin indent on
syntax on

set mouse=a " Enable all mouse buttons
set autoindent " Track previous line's indentation on newline
set smartindent " Smart autoindentation
set laststatus=2 " Always show 2 lines of status bar
set backspace=2 " Allow backspace anything in insert mode
set number " Show line number column
set hidden " Allow modified buffers to be hidden without error
set ignorecase " Case insensitive search
set smartcase " Use case sensitivity if an uppercase character is used
set incsearch " Immediately move to first search target result while typing
set showmatch " Highlight matching brace/paren/quote
set mat=2
set scrolloff=7 " Show at least x lines on top/bottom of caret
set wildmenu " Shows :cmd completions in new window above entry
set wildmode=list:longest,full
set autoread " Always read buffers modified outside of Vim
set smarttab " something about tabstop/softtabstop
set lazyredraw " Don't redraw while executing macros
set magic " Regex in search
set noerrorbells " No boop error sounds
set encoding=utf8 " Always use utf8 encoding
set colorcolumn=80
set textwidth=500
set expandtab
set smarttab

" Trailing whitespace indicators
set list
if &listchars ==# 'eol:$'
    set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif


if v:version > 703 || v:version == 703 && has("path541")
    set formatoptions+=j " Delete comment character when joining comment lines
endif

set shortmess=c " Disables the completion messages with YCM, less obnoxious


let mapleader=","

if has("gui_running")
    colorscheme solarized
    set background=dark
    set guioptions=
endif

if has("win32")
    set wildignore+=*\\target\\*
    set guifont=Lucida_Sans_Typewriter:h9:cANSI
else
    set wildignore+=*/target/*
endif

let g:ctrlp_working_path_mode = 'raw'
let g:ctrlp_custom_ignore = { 'dir': '\v[\/](.git|.cabal-sandbox|.svn|target)'}

let g:airline#extensions#tabline#enabled = 1

let delimitMate_expand_cr=1

" Redraw screen
map <silent> <Leader>r :redraw!<CR>

" Toggle nerdtree
nnoremap <Leader>t :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen = 1

" Buffer switching
nnoremap <Leader>bn :bn<CR>
nnoremap <Leader>bp :bp<CR>

" Quicker OS clipboard copy/paste
nmap <Leader>y "*y
vmap <Leader>y "*y
nmap <Leader>d "*d
vmap <Leader>d "*d
nmap <Leader>p "*p
vmap <Leader>p "*p
nmap <Leader>x "*x
vmap <Leader>x "*x

" Graphical move up/down (even on wrapping lines)
nnoremap j gj
nnoremap k gk

" Creating new windows w/ pseudo-motions
nmap <Leader>sh :leftabove vnew<CR>
nmap <Leader>sl :rightbelow vnew<CR>
nmap <Leader>sk :leftabove new<CR>
nmap <Leader>sj :rightbelow new<CR>

" Motions to windows
nmap <Leader>wh <C-w>h
nmap <Leader>wl <C-w>l
nmap <Leader>wj <C-w>j
nmap <Leader>wk <C-w>k

" Git stuff
nmap <Leader>gs :Gstatus<CR>
nmap <Leader>gg :copen<CR>:GGrep
nmap <Leader>gd :Gdiff<CR>
nmap <Leader>gb :Gblame<CR>
nmap <Leader>ga :Git add %<CR>
nmap <Leader>gc :Gcommit<CR>

" Ctrl-P hotkey
nnoremap <silent> <Leader><space> :CtrlP<CR>

"nnoremap * /\<<C-R>=expand('<cword>')<CR>\><CR>
"nnoremap # ?\<<C-R>=expand('<cword>')<CR>\><CR>

" Folding

autocmd! BufWritePost $HOME/.vim/vimrc :source $HOME/.vim/vimrc
