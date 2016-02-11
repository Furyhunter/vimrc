" Autocmd for file types

augroup FT_PREFS
  autocmd!
  autocmd FileType markdown,text,txt setlocal tw=78 linebreak nolist colorcolumn=79
  autocmd FileType vim setlocal tabstop=8 shiftwidth=2 softtabstop=2
  autocmd FileType rust nmap <buffer> <Leader>bc :call CargoCheck()<CR>
  autocmd FileType rust nmap <buffer> <Leader>bb :call CargoBuild()<CR>
  "autocmd FileType rust
  "  \ let &l:errorformat = "" .
  "  \ "%E%f:%l:%c: %\d%#:%\d%# %.%\{-}error:%.%\{-} %m," .
  "  \ "%W%f:%l:%c: %\d%#:%\d%# %.%\{-}warning:%.%\{-} %m," .
  "  \ "%C%f:%l %m," .
  "  \ "%-Z%.%#"
  autocmd FileType scala setlocal tabstop=8 shiftwidth=2 softtabstop=2
  " Rationale: eclim semantic complete is still a bit laggy b/c omnifunc
  autocmd FileType scala let g:ycm_auto_trigger = 0
augroup END

function! CargoCheck()
  execute 'Dispatch! -dir="' . expand('%:p:h') . '" cargo rustc -- -Zno-trans'
endfunction

function! CargoBuild()
  execute 'Dispatch! -dir="' . expand('%:p:h') . '" cargo build'
endfunction
