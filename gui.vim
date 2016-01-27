" Common GUI settings


"colorscheme solarized
"colorscheme molokai
colorscheme base16-default
set background=dark
set guioptions=

" We use relativenumber only in gui mode due to performance implications over
" SSH.
set relativenumber

command! -bar -nargs=0 Bigger  :let &guifont = substitute(&guifont,'\d\+$','\=submatch(0)+1','')
command! -bar -nargs=0 Smaller :let &guifont = substitute(&guifont,'\d\+$','\=submatch(0)-1','')
nnoremap <Leader>z,        :Smaller<CR>
nnoremap <Leader>z.        :Bigger<CR>
