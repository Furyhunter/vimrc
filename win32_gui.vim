" Win32 GUI specific settings


set guioptions+=r " Enable right side scrollbar
set guifont=Lucida_Console:h9:cANSI " Set common GUI font (fixedsys sux)

" Assure all error bells are totally disabled (Windows workaround)
autocmd! GUIEnter * set vb t_vb=
