set nocompatible

filetype off
set rtp+=$HOME/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
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

set shiftwidth=4 softtabstop=4 tabstop=8 expandtab

filetype plugin indent on
syntax on

set mouse=a
set backspace=2
set autoindent
set smartindent
set laststatus=2
set backspace=2
set number
set hidden
set ignorecase
set smartcase
set incsearch

set shortmess=c " Disables the completion messages with YCM, less obnoxious

let mapleader="\\"

if has("gui_running")
    colorscheme solarized
    set background=dark
    set guioptions=
    set guifont=Lucida_Sans_Typewriter:h9:cANSI
endif

if has("win32")
    set wildignore+=*\\target\\*
else
    set wildignore+=*/target/*
endif

let g:ctrlp_working_path_mode = 'raw'

let g:airline#extensions#tabline#enabled = 1

nnoremap <Leader>t :NERDTreeToggle<Enter>
nnoremap <Leader>] :bn<Enter>
nnoremap <Leader>[ :bp<Enter>

nnoremap * /\<<C-R>=expand('<cword>')<CR>\><CR>
nnoremap # ?\<<C-R>=expand('<cword>')<CR>\><CR>

autocmd! BufWritePost $HOME/.vim/vimrc :source $HOME/.vim/vimrc
