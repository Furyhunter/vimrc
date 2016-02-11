" Win32 specific settings

" Ignore folders named 'bin', 'target'
set wildignore+=*\\bin\\*
set wildignore+=*\\target\\*

" Ignore folders named 'target' under Rust
"autocmd! FileType rust setlocal wildignore+=*\\target\\*
