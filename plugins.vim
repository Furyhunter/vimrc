" Plugin list
" Source _early_ in full configuration parsing

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-dispatch'
Plugin 'rust-lang/rust.vim'
Plugin 'bling/vim-airline'
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
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-shell'
call vundle#end()
