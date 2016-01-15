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
Plugin 'Raimondi/delimitMate'
call vundle#end()

set shiftwidth=4 softtabstop=4 tabstop=8 expandtab

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
set scrolloff=1 " Show at least x lines on top/bottom of caret
set wildmenu " Shows :cmd completions in new window above entry
set autoread " Always read buffers modified outside of Vim
set smarttab " something about tabstop/softtabstop

if v:version > 703 || v:version == 703 && has("path541")
    set formatoptions+=j " Delete comment character when joining comment lines
endif

set shortmess=c " Disables the completion messages with YCM, less obnoxious

let mapleader="\\"

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

let g:airline#extensions#tabline#enabled = 1

let delimitMate_expand_cr=1

nnoremap <Leader>t :NERDTreeToggle<Enter>
nnoremap <Leader>] :bn<Enter>
nnoremap <Leader>[ :bp<Enter>

nnoremap * /\<<C-R>=expand('<cword>')<CR>\><CR>
nnoremap # ?\<<C-R>=expand('<cword>')<CR>\><CR>

autocmd! BufWritePost $HOME/.vim/vimrc :source $HOME/.vim/vimrc
