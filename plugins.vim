" Plugin list
" Source _early_ in full configuration parsing


call vundle#begin('$HOME/.vim/.vundle-bundle')
Plugin 'VundleVim/Vundle.vim'
Plugin 'dag/vim-fish'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-commentary'
Plugin 'rust-lang/rust.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
if has("gui_running")
    " We don't want this running under term, since it takes a fair amount of
    " time to initialize.
    Plugin 'Valloric/YouCompleteMe'
endif
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'chriskempson/base16-vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'cespare/vim-toml'
"Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-shell'
Plugin 'junegunn/vim-easy-align'
Plugin 'neomake/neomake'
Plugin 'leafo/moonscript-vim'
Plugin 'editorconfig/editorconfig-vim'
call vundle#end()
