set nocompatible

filetype off
set rtp+=$HOME/.vim/.vundle-bundle/Vundle.vim

" Load vundle plugins
source $HOME/.vim/plugins.vim

" Disabled -- it's just not practical in normal Vim. Performance is too janky,
" missing valuable features.
"" Conditionally load eclim plugin, if it's available.
"" NOTE: You must install eclim separately, into the eclim subdirectory
"" in your vimfiles. This is why it's a conditional variable.
"if g:idola_conf_eclim == 1
  "set rtp+=$HOME/.vim/eclim
  "let g:EclimCompletionMethod = 'omnifunc'
"endif

set shiftwidth=4 tabstop=8 softtabstop=4

filetype plugin indent on
syntax on

set mouse=a       " Enable all mouse buttons
set autoindent    " Track previous line's indentation on newline
set smartindent   " Smart autoindentation
set laststatus=2  " Always show 2 lines of status bar
set backspace=2   " Allow backspace anything in insert mode
set number        " Show line number column
set hidden        " Allow modified buffers to be hidden without error
set ignorecase    " Case insensitive search
set smartcase     " Use case sensitivity if an uppercase character is used
set incsearch     " Immediately move to first search target result while typing
set showmatch     " Highlight matching brace/paren/quote
set mat=0
set scrolloff=7   " Show at least x lines on top/bottom of caret
set wildmenu      " Shows :cmd completions in new window above entry
set wildmode=list:longest,full
set autoread      " Always read buffers modified outside of Vim
set smarttab      " something about tabstop/softtabstop
set lazyredraw    " Don't redraw while executing macros
set magic         " Regex in search
set noerrorbells  " No boop error sounds
set vb
set t_vb=
set encoding=utf8 " Always use utf8 encoding
set colorcolumn=80
set textwidth=500
set expandtab
set shortmess=c   " Disables the completion messages with YCM, less obnoxious

" Trailing whitespace indicators
set list
if &listchars ==# 'eol:$'
    set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif


if v:version > 703 || v:version == 703 && has("path541")
    set formatoptions+=j " Delete comment character when joining comment lines
endif


" Common GUI settings
if has("gui_running") || has("nvim")
    source $HOME/.vim/gui.vim
endif

" Win32/Unixish specific settings
if has("win32")
    source $HOME/.vim/win32.vim
else
    source $HOME/.vim/unix.vim
endif

" Windows GUI specific settings
if has("win32") && (has("gui_running") || has("nvim"))
    source $HOME/.vim/win32_gui.vim
endif

" Non-Windows (unixish) GUI specific settings
if !has("win32") && (has("gui_running") || has("nvim"))
    source $HOME/.vim/unix_gui.vim
endif

"let g:ctrlp_working_path_mode = 'raw'
"let g:ctrlp_custom_ignore = { 'dir': '\v[\/](.git|.cabal-sandbox|.svn|target)'}
let g:ctrlp_custom_ignore = {
  \ 'dir': '\v[\/](\.git|\.hg|\.svn|\.cabal-sandbox|node_modules|target|\.vundle-bundle)$'
  \ }

let g:airline#extensions#tabline#enabled = 0

let delimitMate_expand_cr=1

" Hotkeys

" The <Leader> substitute character. Maybe prefer \, don't know
let mapleader=","

" Redraw screen (for ssh corruption, etc)
map <silent> <Leader>rd :redraw!<CR>

" Toggle ~~nerdtree~~ vimfiler
nnoremap <Leader>t :VimFiler -explorer -force-quit<CR>
nnoremap <C-T> :VimFiler -explorer -force-quit<CR>
"let NERDTreeQuitOnOpen = 1
let g:vimfiler_as_default_explorer = 1

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
nmap <Leader>P "*P
vmap <Leader>P "*P
nmap <Leader>x "*x
vmap <Leader>x "*x

" Graphical move up/down (even on wrapping lines)
" May introduce performance issues.
nnoremap j gj
nnoremap k gk

" Easy Align
nmap ga <Plug>(EasyAlign)
vmap ga <Plug>(EasyAlign)

" Creating new windows w/ pseudo-motions
nmap <Leader>sh :leftabove vsplit<CR>
nmap <Leader>sl :rightbelow vsplit<CR>
nmap <Leader>sk :leftabove split<CR>
nmap <Leader>sj :rightbelow split<CR>

" Faster moves.
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Motions to windows
" Disabled -- prefer C-w hjkl (is faster)
"nmap <Leader>wh <C-w>h
"nmap <Leader>wl <C-w>l
"nmap <Leader>wj <C-w>j
"nmap <Leader>wk <C-w>k

" Git stuff
nmap <Leader>gs :Gstatus<CR>
"nmap <Leader>gg :copen<CR>:GGrep
nmap <Leader>gd :Gdiff<CR>
nmap <Leader>gb :Gblame<CR>
nmap <Leader>ga :Git add %<CR>
nmap <Leader>gc :Gcommit<CR>

" Ctrl-P hotkey
"nnoremap <silent> <Leader><space> :Unite -start-insert file buffer<CR>
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_selecta'])
nnoremap <C-p> :Unite -toggle -start-insert file_rec/async<CR>
nnoremap <C-o> :Unite -toggle -quick-match buffer<CR>

"nnoremap * /\<<C-R>=expand('<cword>')<CR>\><CR>
"nnoremap # ?\<<C-R>=expand('<cword>')<CR>\><CR>

" Reload configuration
nnoremap <Leader>rc :source $HOME/.vimrc<CR>

" Load filetype autocmds
source $HOME/.vim/autocmd.vim
