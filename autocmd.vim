" Autocmd for file types

augroup FT_PREFS
    autocmd!
    autocmd FileType markdown,text,txt setlocal tw=78 linebreak nolist colorcolumn=79
    autocmd FileType vim setlocal tabstop=8 shiftwidth=2 softtabstop=2
augroup END
