" Common GUI settings


"colorscheme solarized
"colorscheme molokai
colorscheme base16-default-dark
set background=dark
set guioptions=

" We use relativenumber only in gui mode due to performance implications over
" SSH.
set relativenumber

" Assure all error bells are totally disabled (not needed for MacVim)
if !has("gui_macvim")
  autocmd! GUIEnter * set vb t_vb=
endif

" YCM Global config
let g:ycm_global_ycm_extra_conf="~/.vim/ycm_global_extra_conf.py"

command! -bar -nargs=0 Bigger  :let &guifont = substitute(&guifont,'\d\+$','\=submatch(0)+1','')
command! -bar -nargs=0 Smaller :let &guifont = substitute(&guifont,'\d\+$','\=submatch(0)-1','')
nnoremap <Leader>z,        :Smaller<CR>
nnoremap <Leader>z.        :Bigger<CR>
